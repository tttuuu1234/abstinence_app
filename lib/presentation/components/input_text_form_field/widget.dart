import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../validator/validator.dart';

/// 入力filed(バリデーション可能)
class InputTextFormFiled extends StatelessWidget {
  const InputTextFormFiled({
    Key? key,
    this.textEditingController,
    this.readOnly = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType,
    this.maxLength,
    this.validateRules,
    this.label,
    this.hintText,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final bool readOnly;
  final TextInputAction textInputAction;
  final TextInputType? textInputType;
  final Widget? label;
  final String? hintText;
  final int? maxLength;
  final List<Validator>? validateRules;
  final Function(String value)? onChanged;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textInputAction: textInputAction,
      readOnly: readOnly,
      maxLength: maxLength,
      keyboardType: textInputType,
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        contentPadding: EdgeInsets.zero,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.green,
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
      onTap: onTap,
    );
  }
}
