import 'package:abstinence_app/core/firebase/auth/service.dart';
import 'package:abstinence_app/provider/firebase.dart';
import 'package:abstinence_app/provider/local.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/local/secure_storage/service.dart';
import '../../../importer.dart';
import 'state.dart';

final signInInputProvider =
    AutoDisposeStateNotifierProvider<SignInInputNotifier, SignInInputState>(
        (ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final localSecureStorage = ref.watch(localSecureStorageProvider);
  return SignInInputNotifier(
    firebaseAuthService: firebaseAuthService,
    localSecureStorage: localSecureStorage,
  );
});

class SignInInputNotifier extends StateNotifier<SignInInputState> {
  SignInInputNotifier({
    required this.firebaseAuthService,
    required this.localSecureStorage,
  }) : super(SignInInputState());

  final FirebaseAuthService firebaseAuthService;
  final LocalSecureStorage localSecureStorage;

  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  void setPassword(String value) {
    state = state.copyWith(password: value);
  }

  void checkAllInputted() {
    state = state.copyWith(
      isALlInputted: state.email.isNotEmpty && state.password.isNotEmpty,
    );
  }

  Future<void> signIn({
    required void Function() onSuccess,
    required void Function() onFailuer,
  }) async {
    await firebaseAuthService
        .signIn(email: state.email, password: state.password)
        .then((value) async {
      print('サインイン成功');
      print(value);
      final currentUser = value.user;
      if (currentUser == null) {
        assert(currentUser != null, 'ユーザー情報を取得できませんでした。');
        return;
      }

      // 認証情報の保持
      await localSecureStorage.write(
        key: LocalSecureStorageKey.uid.name,
        value: currentUser.uid,
      );
      await localSecureStorage.write(
        key: LocalSecureStorageKey.email.name,
        value: currentUser.email,
      );
      onSuccess();
    }).catchError((error) {
      print('エラーです');
      print(error);
      onFailuer();
    });
  }
}
