// ignore_for_file: cascade_invocations

import 'dart:developer';

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
    ref: ref,
    firebaseAuthService: firebaseAuthService,
    localSecureStorage: localSecureStorage,
  );
});

/// サインイン処理状態
final sigInProvider = StateProvider<AsyncValue>((ref) {
  return const AsyncValue.data(null);
});

class SignInInputNotifier extends StateNotifier<SignInInputState> {
  SignInInputNotifier({
    required this.ref,
    required this.firebaseAuthService,
    required this.localSecureStorage,
  }) : super(SignInInputState());

  final Ref ref;
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

  Future<void> signIn({required void Function() onSuccess}) async {
    final notifier = ref.read(sigInProvider.notifier);
    notifier.state = const AsyncValue.loading();
    // guardでtry~catchを楽に行なってくれている
    notifier.state = await AsyncValue.guard(() async {
      final response = await firebaseAuthService.signIn(
        email: state.email,
        password: state.password,
      );
      final currentUser = response.user;
      if (currentUser == null) {
        assert(currentUser != null, 'ユーザー情報を取得できませんでした。');
        await firebaseAuthService.signOut();
        log('エラーが発生しました。\n再度お試しください。');
        // handleAsyncValueのerrorの方で受け取ってくれる
        throw Exception('エラーが発生しました。\n再度お試しください。');
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
    });
  }
}
