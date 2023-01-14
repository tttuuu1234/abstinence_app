import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// User登録リクエスト
@freezed
abstract class UserCreateRequest with _$UserCreateRequest {
  factory UserCreateRequest({
    required String nickname,
    required int age,
    required String enthusiasm,
    required DateTime targetAbstinenceTime,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(null) DateTime? deletedAt,
  }) = _UserCreateRequest;

  factory UserCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$UserCreateRequestFromJson(json);
}
