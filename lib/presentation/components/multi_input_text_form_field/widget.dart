import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/padding.dart';

/// 複数入力filed(バリデーション可能)
class MultiInputTextFormFiled extends StatelessWidget {
  const MultiInputTextFormFiled({
    Key? key,
    required this.textEditingController,
    this.readOnly = false,
    this.alignLabelWithHint = true,
    this.maxLines = 10,
    this.textInputAction = TextInputAction.newline,
    this.labelText,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final bool readOnly;
  final bool alignLabelWithHint;
  final int maxLines;
  final TextInputAction textInputAction;
  final String? labelText;
  final String? hintText;
  final Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
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
      ),
      onChanged: onChanged,
    );
  }
}
