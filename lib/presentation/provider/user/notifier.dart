import 'dart:async';

import 'package:abstinence_app/core/local/secure_storage/service.dart';
import 'package:abstinence_app/presentation/provider/user/state.dart';
import 'package:abstinence_app/provider/local.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider =
    AutoDisposeStateNotifierProvider<UserNotifier, UserState>((ref) {
  final localSecureStorage = ref.watch(localSecureStorageProvider);
  return UserNotifier(localSecureStorage: localSecureStorage);
});

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier({
    required this.localSecureStorage,
  }) : super(UserState.unAuthenticated()) {
    unawaited(setMode());
  }

  final LocalSecureStorage localSecureStorage;

  /// ユーザー認証状態の保持
  Future<void> setMode() async {
    final uid = await localSecureStorage.read(LocalSecureStorageKey.uid.name);
    final email = await localSecureStorage.read(
      LocalSecureStorageKey.email.name,
    );

    if (uid == null || email == null) {
      state = UserStateUnAuthenticated();
      return;
    }

    state = UserState.authenticated();
  }
}
