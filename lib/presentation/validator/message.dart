/// Validate時のエラーメッセージ
class ValidateMessage {
  ValidateMessage._();

  static String required = '必須入力です。';
  static String maxLength(int maxLength) {
    return '$maxLength文字以内で入力してください。';
  }
}
