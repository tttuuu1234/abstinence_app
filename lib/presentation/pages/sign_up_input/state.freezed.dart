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
mixin _$SignUpInputState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isALlInputted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpInputStateCopyWith<SignUpInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpInputStateCopyWith<$Res> {
  factory $SignUpInputStateCopyWith(
          SignUpInputState value, $Res Function(SignUpInputState) then) =
      _$SignUpInputStateCopyWithImpl<$Res, SignUpInputState>;
  @useResult
  $Res call({String email, String password, bool isALlInputted});
}

/// @nodoc
class _$SignUpInputStateCopyWithImpl<$Res, $Val extends SignUpInputState>
    implements $SignUpInputStateCopyWith<$Res> {
  _$SignUpInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isALlInputted = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isALlInputted: null == isALlInputted
          ? _value.isALlInputted
          : isALlInputted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpInputStateCopyWith<$Res>
    implements $SignUpInputStateCopyWith<$Res> {
  factory _$$_SignUpInputStateCopyWith(
          _$_SignUpInputState value, $Res Function(_$_SignUpInputState) then) =
      __$$_SignUpInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, bool isALlInputted});
}

/// @nodoc
class __$$_SignUpInputStateCopyWithImpl<$Res>
    extends _$SignUpInputStateCopyWithImpl<$Res, _$_SignUpInputState>
    implements _$$_SignUpInputStateCopyWith<$Res> {
  __$$_SignUpInputStateCopyWithImpl(
      _$_SignUpInputState _value, $Res Function(_$_SignUpInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isALlInputted = null,
  }) {
    return _then(_$_SignUpInputState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isALlInputted: null == isALlInputted
          ? _value.isALlInputted
          : isALlInputted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignUpInputState implements _SignUpInputState {
  _$_SignUpInputState(
      {this.email = '', this.password = '', this.isALlInputted = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isALlInputted;

  @override
  String toString() {
    return 'SignUpInputState(email: $email, password: $password, isALlInputted: $isALlInputted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpInputState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isALlInputted, isALlInputted) ||
                other.isALlInputted == isALlInputted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isALlInputted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpInputStateCopyWith<_$_SignUpInputState> get copyWith =>
      __$$_SignUpInputStateCopyWithImpl<_$_SignUpInputState>(this, _$identity);
}

abstract class _SignUpInputState implements SignUpInputState {
  factory _SignUpInputState(
      {final String email,
      final String password,
      final bool isALlInputted}) = _$_SignUpInputState;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get isALlInputted;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpInputStateCopyWith<_$_SignUpInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
