import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class EnthusiasmInputState with _$EnthusiasmInputState {
  factory EnthusiasmInputState({
    @Default('') String enthusiasm,
    @Default(false) bool isALlInputted,
  }) = _EnthusiasmInputState;
}
