import 'package:abstinence_app/core/local/secure_storage/service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localSecureStorageProvider = Provider<LocalSecureStorage>((ref) {
  return LocalSecureStorage();
});