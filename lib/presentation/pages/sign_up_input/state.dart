import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class SignUpInputState with _$SignUpInputState {
  factory SignUpInputState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isALlInputted,
  }) = _SignUpInputState;
}
