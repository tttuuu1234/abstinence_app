import 'rules/max_length.dart';
import 'rules/required.dart';

abstract class Validator<T> {
  String getMessage();
  bool validate(T value);
}

/// Validator管理
/// Validatorの呼び出しはここから行う
class ValidatorControl {
  ValidatorControl._();

  static RequiredValidator required() => RequiredValidator();
  static MaxLengthValidator maxLength([int maxLength = 10]) =>
      MaxLengthValidator(maxLength);
}
