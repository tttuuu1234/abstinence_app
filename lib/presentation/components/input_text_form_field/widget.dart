import 'package:flutter/material.dart';

import '../../styles/colors.dart';

/// 入力filed(バリデーション可能)
class InputTextFormFiled extends StatelessWidget {
  const InputTextFormFiled({
    Key? key,
    required this.textEditingController,
    this.label,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final Widget? label;
  final String? hintText;
  final Function(String value)? onChanged;
  final Function(String value)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      textInputAction: TextInputAction.next,
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
      onSubmitted: onSubmitted,
    );
  }
}
