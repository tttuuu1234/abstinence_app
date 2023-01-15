import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// 端末の安全なStorage
/// 認証情報等の重要な保持しておきたい情報は、このstorageで管理する
class LocalSecureStorage {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> write({required String key, required String? value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return _secureStorage.read(key: key);
  }
}

enum LocalSecureStorageKey {
  /// currentUserのid
  uid,

  /// currentUserのメールアドレス
  email,
}
