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
mixin _$ProfileInputState {
  String get nickname => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  bool get isALlInputted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileInputStateCopyWith<ProfileInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInputStateCopyWith<$Res> {
  factory $ProfileInputStateCopyWith(
          ProfileInputState value, $Res Function(ProfileInputState) then) =
      _$ProfileInputStateCopyWithImpl<$Res, ProfileInputState>;
  @useResult
  $Res call({String nickname, int? age, bool isALlInputted});
}

/// @nodoc
class _$ProfileInputStateCopyWithImpl<$Res, $Val extends ProfileInputState>
    implements $ProfileInputStateCopyWith<$Res> {
  _$ProfileInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? age = freezed,
    Object? isALlInputted = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isALlInputted: null == isALlInputted
          ? _value.isALlInputted
          : isALlInputted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileInputStateCopyWith<$Res>
    implements $ProfileInputStateCopyWith<$Res> {
  factory _$$_ProfileInputStateCopyWith(_$_ProfileInputState value,
          $Res Function(_$_ProfileInputState) then) =
      __$$_ProfileInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, int? age, bool isALlInputted});
}

/// @nodoc
class __$$_ProfileInputStateCopyWithImpl<$Res>
    extends _$ProfileInputStateCopyWithImpl<$Res, _$_ProfileInputState>
    implements _$$_ProfileInputStateCopyWith<$Res> {
  __$$_ProfileInputStateCopyWithImpl(
      _$_ProfileInputState _value, $Res Function(_$_ProfileInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? age = freezed,
    Object? isALlInputted = null,
  }) {
    return _then(_$_ProfileInputState(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isALlInputted: null == isALlInputted
          ? _value.isALlInputted
          : isALlInputted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileInputState implements _ProfileInputState {
  _$_ProfileInputState(
      {this.nickname = '', this.age, this.isALlInputted = false});

  @override
  @JsonKey()
  final String nickname;
  @override
  final int? age;
  @override
  @JsonKey()
  final bool isALlInputted;

  @override
  String toString() {
    return 'ProfileInputState(nickname: $nickname, age: $age, isALlInputted: $isALlInputted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileInputState &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.isALlInputted, isALlInputted) ||
                other.isALlInputted == isALlInputted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, age, isALlInputted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileInputStateCopyWith<_$_ProfileInputState> get copyWith =>
      __$$_ProfileInputStateCopyWithImpl<_$_ProfileInputState>(
          this, _$identity);
}

abstract class _ProfileInputState implements ProfileInputState {
  factory _ProfileInputState(
      {final String nickname,
      final int? age,
      final bool isALlInputted}) = _$_ProfileInputState;

  @override
  String get nickname;
  @override
  int? get age;
  @override
  bool get isALlInputted;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileInputStateCopyWith<_$_ProfileInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
