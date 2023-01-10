import 'package:abstinence_app/presentation/pages/enthusiasm_input/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final enthusiasmInputProvider =
    StateNotifierProvider<EnthusiasmInputNotifier, EnthusiasmInputState>((ref) {
  return EnthusiasmInputNotifier();
});

class EnthusiasmInputNotifier extends StateNotifier<EnthusiasmInputState> {
  EnthusiasmInputNotifier() : super(EnthusiasmInputState());

  void setEnthusiasm(String value) {
    state = state.copyWith(enthusiasm: value);
  }

  void checkAllInputted() {
    state = state.copyWith(isALlInputted: state.enthusiasm.isNotEmpty);
  }
}
