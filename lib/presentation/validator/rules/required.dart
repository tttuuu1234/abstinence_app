import '../message.dart';
import '../validator.dart';

/// 必須
class RequiredValidator implements Validator<String?> {
  @override
  String getMessage() => ValidateMessage.required;

  @override
  bool validate(value) {
    if (value == null || value.isEmpty) {
      return true;
    }

    return false;
  }
}
