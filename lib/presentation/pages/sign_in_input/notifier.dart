import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../importer.dart';
import 'state.dart';

final signInInputProvider =
    AutoDisposeStateNotifierProvider<SignInInputNotifier, SignInInputState>(
        (ref) {
  return SignInInputNotifier();
});

class SignInInputNotifier extends StateNotifier<SignInInputState> {
  SignInInputNotifier() : super(SignInInputState());

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
}
