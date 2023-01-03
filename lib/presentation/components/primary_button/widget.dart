import '../../extension/context.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/padding.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    this.buttonColor = AppColor.green,
    this.width,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final double? width;
  final Color buttonColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.getWidth * 0.7,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: AppPadding.smallAll,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
