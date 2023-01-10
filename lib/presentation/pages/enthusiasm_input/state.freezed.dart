// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnthusiasmInputState {
  String get enthusiasm => throw _privateConstructorUsedError;
  bool get isALlInputted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnthusiasmInputStateCopyWith<EnthusiasmInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnthusiasmInputStateCopyWith<$Res> {
  factory $EnthusiasmInputStateCopyWith(EnthusiasmInputState value,
          $Res Function(EnthusiasmInputState) then) =
      _$EnthusiasmInputStateCopyWithImpl<$Res, EnthusiasmInputState>;
  @useResult
  $Res call({String enthusiasm, bool isALlInputted});
}

/// @nodoc
class _$EnthusiasmInputStateCopyWithImpl<$Res,
        $Val extends EnthusiasmInputState>
    implements $EnthusiasmInputStateCopyWith<$Res> {
  _$EnthusiasmInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enthusiasm = null,
    Object? isALlInputted = null,
  }) {
    return _then(_value.copyWith(
      enthusiasm: null == enthusiasm
          ? _value.enthusiasm
          : enthusiasm // ignore: cast_nullable_to_non_nullable
              as String,
      isALlInputted: null == isALlInputted
          ? _value.isALlInputted
          : isALlInputted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnthusiasmInputStateCopyWith<$Res>
    implements $EnthusiasmInputStateCopyWith<$Res> {
  factory _$$_EnthusiasmInputStateCopyWith(_$_EnthusiasmInputState value,
          $Res Function(_$_EnthusiasmInputState) then) =
      __$$_EnthusiasmInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String enthusiasm, bool isALlInputted});
}

/// @nodoc
class __$$_EnthusiasmInputStateCopyWithImpl<$Res>
    extends _$EnthusiasmInputStateCopyWithImpl<$Res, _$_EnthusiasmInputState>
    implements _$$_EnthusiasmInputStateCopyWith<$Res> {
  __$$_EnthusiasmInputStateCopyWithImpl(_$_EnthusiasmInputState _value,
      $Res Function(_$_EnthusiasmInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enthusiasm = null,
    Object? isALlInputted = null,
  }) {
    return _then(_$_EnthusiasmInputState(
      enthusiasm: null == enthusiasm
          ? _value.enthusiasm
          : enthusiasm // ignore: cast_nullable_to_non_nullable
              as String,
      isALlInputted: null == isALlInputted
          ? _value.isALlInputted
          : isALlInputted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnthusiasmInputState implements _EnthusiasmInputState {
  _$_EnthusiasmInputState({this.enthusiasm = '', this.isALlInputted = false});

  @override
  @JsonKey()
  final String enthusiasm;
  @override
  @JsonKey()
  final bool isALlInputted;

  @override
  String toString() {
    return 'EnthusiasmInputState(enthusiasm: $enthusiasm, isALlInputted: $isALlInputted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnthusiasmInputState &&
            (identical(other.enthusiasm, enthusiasm) ||
                other.enthusiasm == enthusiasm) &&
            (identical(other.isALlInputted, isALlInputted) ||
                other.isALlInputted == isALlInputted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enthusiasm, isALlInputted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnthusiasmInputStateCopyWith<_$_EnthusiasmInputState> get copyWith =>
      __$$_EnthusiasmInputStateCopyWithImpl<_$_EnthusiasmInputState>(
          this, _$identity);
}

abstract class _EnthusiasmInputState implements EnthusiasmInputState {
  factory _EnthusiasmInputState(
      {final String enthusiasm,
      final bool isALlInputted}) = _$_EnthusiasmInputState;

  @override
  String get enthusiasm;
  @override
  bool get isALlInputted;
  @override
  @JsonKey(ignore: true)
  _$$_EnthusiasmInputStateCopyWith<_$_EnthusiasmInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
