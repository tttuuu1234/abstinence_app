// ignore_for_file: cascade_invocations

import 'dart:developer';

import '../../../core/local/secure_storage/service.dart';
import '../../../provider/local.dart';

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
    ref: ref,
    signUpInputState: signUpInputState,
    profileInputState: profileInputState,
    userRepository: userRepository,
    firebaseAuthService: firebaseAuthService,
    localSecureStorage: localSecureStorage,
  );
});

/// サインアップ処理状態
final signUpProvider = StateProvider<AsyncValue<void>>((ref) {
  return const AsyncValue.data(null);
});

class EnthusiasmInputNotifier extends StateNotifier<EnthusiasmInputState> {
  EnthusiasmInputNotifier({
    required this.ref,
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

  final Ref ref;
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

  Future<void> signUp({required void Function(String uid) onSuccess}) async {
    final notifier = ref.read(signUpProvider.notifier);
    notifier.state = const AsyncValue.loading();
    notifier.state = await AsyncValue.guard(() async {
      final response = await firebaseAuthService.signUp(
        email: signUpInputState.email,
        password: signUpInputState.password,
      );
      final user = response.user;
      if (user == null) {
        assert(user != null, '新規登録後にuserが取得できていない');
        log('エラーが発生しました。\n再度お試しください。');
        // handleAsyncValueのerrorの方で受け取ってくれる
        throw Exception('エラーが発生しました。\n再度お試しください。');
      }

      onSuccess(user.uid);
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
      final currentUser = firebaseAuthService.fetchCurrentUser();
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
    });
  }
}
