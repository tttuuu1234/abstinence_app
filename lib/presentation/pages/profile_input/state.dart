import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class ProfileInputState with _$ProfileInputState {
  factory ProfileInputState({
    @Default('') String nickname,
    int? age,
    @Default(false) bool isALlInputted,
  }) = _ProfileInputState;
}
