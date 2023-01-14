import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/padding.dart';
import '../../validator/validator.dart';

/// 複数入力filed(バリデーション可能)
class MultiInputTextFormFiled extends StatelessWidget {
  const MultiInputTextFormFiled({
    Key? key,
    required this.textEditingController,
    this.readOnly = false,
    this.alignLabelWithHint = true,
    this.maxLines = 10,
    this.textInputType,
    this.textInputAction = TextInputAction.newline,
    this.labelText,
    this.hintText,
    this.validateRules,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final bool readOnly;
  final bool alignLabelWithHint;
  final int maxLines;
  final TextInputType? textInputType;
  final TextInputAction textInputAction;
  final String? labelText;
  final String? hintText;
  final List<Validator>? validateRules;
  final Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      readOnly: readOnly,
      maxLines: maxLines,
      decoration: InputDecoration(
        alignLabelWithHint: alignLabelWithHint,
        labelText: labelText,
        hintText: hintText,
        contentPadding: AppPadding.smallAll,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.grey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.green,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.red,
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        String? errorMessage;
        final rules = validateRules;
        if (rules == null) {
          return null;
        }

        for (final rule in rules) {
          if (rule.validate(value)) {
            errorMessage = rule.getMessage();
            break;
          }
        }

        return errorMessage;
      },
      onChanged: onChanged,
    );
  }
}
