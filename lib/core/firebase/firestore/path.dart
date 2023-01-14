class FirestorePath {
  /// usersコレクション
  final String users = 'users';

  /// user参照先
  String userPath(String id) {
    return '$users/$id';
  }
}
