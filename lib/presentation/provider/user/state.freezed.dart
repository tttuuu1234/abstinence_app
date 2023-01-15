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
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateAuthenticated value) authenticated,
    required TResult Function(UserStateUnAuthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateAuthenticated value)? authenticated,
    TResult? Function(UserStateUnAuthenticated value)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateAuthenticated value)? authenticated,
    TResult Function(UserStateUnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStateAuthenticatedCopyWith<$Res> {
  factory _$$UserStateAuthenticatedCopyWith(_$UserStateAuthenticated value,
          $Res Function(_$UserStateAuthenticated) then) =
      __$$UserStateAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateAuthenticatedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateAuthenticated>
    implements _$$UserStateAuthenticatedCopyWith<$Res> {
  __$$UserStateAuthenticatedCopyWithImpl(_$UserStateAuthenticated _value,
      $Res Function(_$UserStateAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateAuthenticated implements UserStateAuthenticated {
  _$UserStateAuthenticated();

  @override
  String toString() {
    return 'UserState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateAuthenticated value) authenticated,
    required TResult Function(UserStateUnAuthenticated value) unAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateAuthenticated value)? authenticated,
    TResult? Function(UserStateUnAuthenticated value)? unAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateAuthenticated value)? authenticated,
    TResult Function(UserStateUnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class UserStateAuthenticated implements UserState {
  factory UserStateAuthenticated() = _$UserStateAuthenticated;
}

/// @nodoc
abstract class _$$UserStateUnAuthenticatedCopyWith<$Res> {
  factory _$$UserStateUnAuthenticatedCopyWith(_$UserStateUnAuthenticated value,
          $Res Function(_$UserStateUnAuthenticated) then) =
      __$$UserStateUnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateUnAuthenticatedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateUnAuthenticated>
    implements _$$UserStateUnAuthenticatedCopyWith<$Res> {
  __$$UserStateUnAuthenticatedCopyWithImpl(_$UserStateUnAuthenticated _value,
      $Res Function(_$UserStateUnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateUnAuthenticated implements UserStateUnAuthenticated {
  _$UserStateUnAuthenticated();

  @override
  String toString() {
    return 'UserState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateUnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateAuthenticated value) authenticated,
    required TResult Function(UserStateUnAuthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateAuthenticated value)? authenticated,
    TResult? Function(UserStateUnAuthenticated value)? unAuthenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateAuthenticated value)? authenticated,
    TResult Function(UserStateUnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UserStateUnAuthenticated implements UserState {
  factory UserStateUnAuthenticated() = _$UserStateUnAuthenticated;
}
