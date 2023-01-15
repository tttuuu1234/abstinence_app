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
mixin _$SignInInputState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isALlInputted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInInputStateCopyWith<SignInInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInInputStateCopyWith<$Res> {
  factory $SignInInputStateCopyWith(
          SignInInputState value, $Res Function(SignInInputState) then) =
      _$SignInInputStateCopyWithImpl<$Res, SignInInputState>;
  @useResult
  $Res call({String email, String password, bool isALlInputted});
}

/// @nodoc
class _$SignInInputStateCopyWithImpl<$Res, $Val extends SignInInputState>
    implements $SignInInputStateCopyWith<$Res> {
  _$SignInInputStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SignInInputStateCopyWith<$Res>
    implements $SignInInputStateCopyWith<$Res> {
  factory _$$_SignInInputStateCopyWith(
          _$_SignInInputState value, $Res Function(_$_SignInInputState) then) =
      __$$_SignInInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, bool isALlInputted});
}

/// @nodoc
class __$$_SignInInputStateCopyWithImpl<$Res>
    extends _$SignInInputStateCopyWithImpl<$Res, _$_SignInInputState>
    implements _$$_SignInInputStateCopyWith<$Res> {
  __$$_SignInInputStateCopyWithImpl(
      _$_SignInInputState _value, $Res Function(_$_SignInInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isALlInputted = null,
  }) {
    return _then(_$_SignInInputState(
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

class _$_SignInInputState implements _SignInInputState {
  _$_SignInInputState(
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
    return 'SignInInputState(email: $email, password: $password, isALlInputted: $isALlInputted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInInputState &&
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
  _$$_SignInInputStateCopyWith<_$_SignInInputState> get copyWith =>
      __$$_SignInInputStateCopyWithImpl<_$_SignInInputState>(this, _$identity);
}

abstract class _SignInInputState implements SignInInputState {
  factory _SignInInputState(
      {final String email,
      final String password,
      final bool isALlInputted}) = _$_SignInInputState;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get isALlInputted;
  @override
  @JsonKey(ignore: true)
  _$$_SignInInputStateCopyWith<_$_SignInInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
