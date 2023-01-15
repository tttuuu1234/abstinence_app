import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class SignInInputState with _$SignInInputState {
  factory SignInInputState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isALlInputted,
  }) = _SignInInputState;
}
