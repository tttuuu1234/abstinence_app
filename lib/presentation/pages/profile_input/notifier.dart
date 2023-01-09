import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../importer.dart';
import 'state.dart';

final profileInputProvider =
    AutoDisposeStateNotifierProvider<ProfileInputNotifier, ProfileInputState>(
        (ref) {
  return ProfileInputNotifier();
});

class ProfileInputNotifier extends StateNotifier<ProfileInputState> {
  ProfileInputNotifier() : super(ProfileInputState());

  void setNickname(String value) {
    state = state.copyWith(nickname: value);
  }

  void setAge(int? value) {
    state = state.copyWith(age: value);
  }

  void checkAllInputted() {
    state = state.copyWith(
      isALlInputted: state.nickname.isNotEmpty && state.age != null,
    );
  }
}
