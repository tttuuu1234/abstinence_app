import '../core/firebase/auth/service.dart';
import '../core/firebase/firestore/path.dart';
import '../core/firebase/firestore/services/firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firestoreServiceProvider = Provider<FirestoreService>((ref) {
  return FirestoreService();
});

final firestorePathProvider = Provider<FirestorePath>((ref) {
  return FirestorePath();
});

final firebaseAuthServiceProvider = Provider<FirebaseAuthService>((ref) {
  return FirebaseAuthService();
});