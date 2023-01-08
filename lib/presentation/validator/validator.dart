import 'rules/between.dart';

import 'rules/email.dart';

import 'rules/max_length.dart';
import 'rules/required.dart';

abstract class Validator<T> {
  /// Validateメッセージ取得
  String getMessage();

  /// validate実行
  /// true: 無効な入力
  /// false: 有効な入力
  bool validate(T value);
}

/// Validator管理
/// Validatorの呼び出しはここから行う
class ValidatorControl {
  ValidatorControl._();

  static RequiredValidator required() => RequiredValidator();
  static MaxLengthValidator maxLength([int maxLength = 10]) =>
      MaxLengthValidator(maxLength);
  static BetweenValidator between({int minLength = 8, int maxLength = 20}) =>
      BetweenValidator(minLength: minLength, maxLength: maxLength);
  static EmailValidator email() => EmailValidator();
}
