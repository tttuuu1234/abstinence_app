import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/firebase/firestore/path.dart';
import '../../../core/firebase/firestore/repositories/user.dart';
import '../../../core/firebase/firestore/requests/user/create/request.dart';
import '../../../core/firebase/firestore/services/firestore.dart';
import '../../../provider/firebase.dart';

final userRepositoryImplProvider = Provider<UserRepositoryImpl>((ref) {
  return UserRepositoryImpl(
    ref.watch(firestoreServiceProvider),
    ref.watch(firestorePathProvider),
  );
});

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._service, this._path);

  final FirestoreService _service;
  final FirestorePath _path;

  @override
  Future<void> create({
    required String uid,
    required UserCreateRequest request,
  }) async {
    _service
        .setCollection(_path.users)
        .doc(uid)
        .set(request.toJson())
        .then((_) {
      print('登録成功');
    }).catchError((e) {
      print('登録失敗');
      print(e);
    });
  }
}
