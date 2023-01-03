import 'package:flutter/material.dart';

import '../../styles/colors.dart';

/// 入力filed(バリデーション可能)
class InputTextFormFiled extends StatelessWidget {
  const InputTextFormFiled({
    Key? key,
    required this.textEditingController,
    this.readOnly = false,
    this.textInputAction = TextInputAction.next,
    this.label,
    this.hintText,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final bool readOnly;
  final TextInputAction textInputAction;
  final Widget? label;
  final String? hintText;
  final Function(String value)? onChanged;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textInputAction: textInputAction,
      readOnly: readOnly,
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
      onChanged: onChanged,
      onTap: onTap,
    );
  }
}
