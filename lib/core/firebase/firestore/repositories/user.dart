import '../requests/user/create/request.dart';

abstract class UserRepository {
  /// 登録
  Future<void> create({
    required String uid,
    required UserCreateRequest request,
  });
}
