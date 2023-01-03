import 'package:flutter/material.dart';
import 'size.dart';

/// 内側の余白
class AppPadding {
  AppPadding._();

  // 全体
  static EdgeInsetsGeometry xSmallAll = EdgeInsets.all(AppSize.xSmall);
  static EdgeInsetsGeometry smallAll = EdgeInsets.all(AppSize.small);
  static EdgeInsetsGeometry miduamAll = EdgeInsets.all(AppSize.miduam);
  static EdgeInsetsGeometry largeAll = EdgeInsets.all(AppSize.large);
  static EdgeInsetsGeometry xLargeAll = EdgeInsets.all(AppSize.xLarge);

  // 縦
  static EdgeInsetsGeometry smallVertical = EdgeInsets.symmetric(
    vertical: AppSize.small,
  );
}
