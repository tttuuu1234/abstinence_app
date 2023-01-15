import 'package:abstinence_app/core/local/secure_storage/service.dart';
import 'package:abstinence_app/provider/local.dart';

import '../../../core/firebase/auth/service.dart';
import '../../../core/firebase/firestore/repositories/user.dart';
import '../../../core/firebase/firestore/requests/user/create/request.dart';
import '../../../infrastructure/repositories/firestore/user.dart';
import 'state.dart';
import '../profile_input/notifier.dart';
import '../profile_input/state.dart';
import '../sign_up_input/notifier.dart';
import '../sign_up_input/state.dart';
import '../../../provider/firebase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final enthusiasmInputProvider = AutoDisposeStateNotifierProvider<
    EnthusiasmInputNotifier, EnthusiasmInputState>((ref) {
  final signUpInputState = ref.watch(signUpInputProvider);
  final profileInputState = ref.watch(profileInputProvider);
  final userRepository = ref.watch(userRepositoryImplProvider);
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final localSecureStorage = ref.watch(localSecureStorageProvider);

  return EnthusiasmInputNotifier(
    signUpInputState: signUpInputState,
    profileInputState: profileInputState,
    userRepository: userRepository,
    firebaseAuthService: firebaseAuthService,
    localSecureStorage: localSecureStorage,
  );
});

class EnthusiasmInputNotifier extends StateNotifier<EnthusiasmInputState> {
  EnthusiasmInputNotifier({
    required this.signUpInputState,
    required this.profileInputState,
    required this.userRepository,
    required this.firebaseAuthService,
    required this.localSecureStorage,
  })  : assert(
          profileInputState.age != null,
          '年齢が未入力になっています。年齢は必須入力なので、修正が必要です。',
        ),
        super(EnthusiasmInputState());

  final SignUpInputState signUpInputState;
  final ProfileInputState profileInputState;
  final UserRepository userRepository;
  final FirebaseAuthService firebaseAuthService;
  final LocalSecureStorage localSecureStorage;

  void setEnthusiasm(String value) {
    state = state.copyWith(enthusiasm: value);
  }

  void checkAllInputted() {
    state = state.copyWith(isALlInputted: state.enthusiasm.isNotEmpty);
  }

  Future<void> signUp({
    required void Function(String uid) onSuccess,
    required void Function() onFailuer,
  }) async {
    await firebaseAuthService
        .signUp(
      email: signUpInputState.email,
      password: signUpInputState.password,
    )
        .then((value) {
      print('画面がわ');
      print(value);
      final user = value.user;
      if (user == null) {
        assert(user != null, '新規登録後にuserが取得できていない');
        return;
      }

      onSuccess(user.uid);
    }).catchError((error) {
      print('画面がわエラー');
      print(error);
      onFailuer();
    });
  }

  Future<void> create(String uid) async {
    final request = UserCreateRequest(
      nickname: profileInputState.nickname,
      age: profileInputState.age!,
      enthusiasm: state.enthusiasm,
      targetAbstinenceTime: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    await userRepository.create(uid: uid, request: request).then((_) async {
      print('画面側で成功を受け取り');
      final currentUser = firebaseAuthService.fetchCurrentUser();
      print(currentUser);
      final currentUserId = currentUser == null ? uid : currentUser.uid;
      final currentUserEmail =
          currentUser == null ? signUpInputState.email : currentUser.email;

      // 認証情報の保持
      await localSecureStorage.write(
        key: LocalSecureStorageKey.uid.name,
        value: currentUserId,
      );
      await localSecureStorage.write(
        key: LocalSecureStorageKey.email.name,
        value: currentUserEmail,
      );
    }).catchError((e) {
      print('画面側でエラーの受け取り');
      print(e);
    });
  }
}
