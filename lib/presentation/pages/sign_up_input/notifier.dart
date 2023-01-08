import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../importer.dart';
import 'state.dart';

// AutoDiposeにしないと画面が破棄され(前画面にpop)、再度遷移した時に、formKeyのcurrentStateがnullでエラーになってしまう
final signUpInputProvider =
    AutoDisposeStateNotifierProvider<SignUpInputNotifier, SignUpInputState>(
        (ref) {
  return SignUpInputNotifier();
});

class SignUpInputNotifier extends StateNotifier<SignUpInputState> {
  SignUpInputNotifier() : super(SignUpInputState());

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
