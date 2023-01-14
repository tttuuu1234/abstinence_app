import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  /// コレクションの設定
  CollectionReference setCollection(String path) {
    return firestore.collection(path);
  }
}
