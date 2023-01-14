// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCreateRequest _$UserCreateRequestFromJson(Map<String, dynamic> json) {
  return _UserCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$UserCreateRequest {
  String get nickname => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get enthusiasm => throw _privateConstructorUsedError;
  DateTime get targetAbstinenceTime => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCreateRequestCopyWith<UserCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateRequestCopyWith<$Res> {
  factory $UserCreateRequestCopyWith(
          UserCreateRequest value, $Res Function(UserCreateRequest) then) =
      _$UserCreateRequestCopyWithImpl<$Res, UserCreateRequest>;
  @useResult
  $Res call(
      {String nickname,
      int age,
      String enthusiasm,
      DateTime targetAbstinenceTime,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$UserCreateRequestCopyWithImpl<$Res, $Val extends UserCreateRequest>
    implements $UserCreateRequestCopyWith<$Res> {
  _$UserCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? age = null,
    Object? enthusiasm = null,
    Object? targetAbstinenceTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      enthusiasm: null == enthusiasm
          ? _value.enthusiasm
          : enthusiasm // ignore: cast_nullable_to_non_nullable
              as String,
      targetAbstinenceTime: null == targetAbstinenceTime
          ? _value.targetAbstinenceTime
          : targetAbstinenceTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCreateRequestCopyWith<$Res>
    implements $UserCreateRequestCopyWith<$Res> {
  factory _$$_UserCreateRequestCopyWith(_$_UserCreateRequest value,
          $Res Function(_$_UserCreateRequest) then) =
      __$$_UserCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      int age,
      String enthusiasm,
      DateTime targetAbstinenceTime,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_UserCreateRequestCopyWithImpl<$Res>
    extends _$UserCreateRequestCopyWithImpl<$Res, _$_UserCreateRequest>
    implements _$$_UserCreateRequestCopyWith<$Res> {
  __$$_UserCreateRequestCopyWithImpl(
      _$_UserCreateRequest _value, $Res Function(_$_UserCreateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? age = null,
    Object? enthusiasm = null,
    Object? targetAbstinenceTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_UserCreateRequest(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      enthusiasm: null == enthusiasm
          ? _value.enthusiasm
          : enthusiasm // ignore: cast_nullable_to_non_nullable
              as String,
      targetAbstinenceTime: null == targetAbstinenceTime
          ? _value.targetAbstinenceTime
          : targetAbstinenceTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCreateRequest implements _UserCreateRequest {
  _$_UserCreateRequest(
      {required this.nickname,
      required this.age,
      required this.enthusiasm,
      required this.targetAbstinenceTime,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt = null});

  factory _$_UserCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UserCreateRequestFromJson(json);

  @override
  final String nickname;
  @override
  final int age;
  @override
  final String enthusiasm;
  @override
  final DateTime targetAbstinenceTime;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'UserCreateRequest(nickname: $nickname, age: $age, enthusiasm: $enthusiasm, targetAbstinenceTime: $targetAbstinenceTime, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCreateRequest &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.enthusiasm, enthusiasm) ||
                other.enthusiasm == enthusiasm) &&
            (identical(other.targetAbstinenceTime, targetAbstinenceTime) ||
                other.targetAbstinenceTime == targetAbstinenceTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, age, enthusiasm,
      targetAbstinenceTime, createdAt, updatedAt, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCreateRequestCopyWith<_$_UserCreateRequest> get copyWith =>
      __$$_UserCreateRequestCopyWithImpl<_$_UserCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCreateRequestToJson(
      this,
    );
  }
}

abstract class _UserCreateRequest implements UserCreateRequest {
  factory _UserCreateRequest(
      {required final String nickname,
      required final int age,
      required final String enthusiasm,
      required final DateTime targetAbstinenceTime,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? deletedAt}) = _$_UserCreateRequest;

  factory _UserCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_UserCreateRequest.fromJson;

  @override
  String get nickname;
  @override
  int get age;
  @override
  String get enthusiasm;
  @override
  DateTime get targetAbstinenceTime;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCreateRequestCopyWith<_$_UserCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
