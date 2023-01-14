import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    @Default('') String nickname,
  }) = _UserModel;

  factory UserModel.fromDocument(QueryDocumentSnapshot doc) {
    return UserModel(
      id: doc.id,
      nickname: doc['nickname'],
    );
  }
}
