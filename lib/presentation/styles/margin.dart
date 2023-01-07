import 'package:flutter/material.dart';

import 'size.dart';

/// 縦の余白
class AppVerticalMargin {
  AppVerticalMargin._();

  static SizedBox xSmall = SizedBox(height: AppSize.xSmall);
  static SizedBox small = SizedBox(height: AppSize.small);
  static SizedBox miduam = SizedBox(height: AppSize.miduam);
  static SizedBox large = SizedBox(height: AppSize.large);
  static SizedBox xLarge = SizedBox(height: AppSize.xLarge);
}

/// 横の余白
class AppHorizontalMargin {
  AppHorizontalMargin._();

  static SizedBox xSmall = SizedBox(width: AppSize.xSmall);
  static SizedBox small = SizedBox(width: AppSize.small);
  static SizedBox miduam = SizedBox(width: AppSize.miduam);
  static SizedBox large = SizedBox(width: AppSize.large);
  static SizedBox xLarge = SizedBox(width: AppSize.xLarge);
}

/// 外側の余白
class AppMargin {
  AppMargin._();

  // 全体
  static EdgeInsetsGeometry xSmallAll = EdgeInsets.all(AppSize.xSmall);
  static EdgeInsetsGeometry smallAll = EdgeInsets.all(AppSize.small);
  static EdgeInsetsGeometry miduamAll = EdgeInsets.all(AppSize.miduam);
  static EdgeInsetsGeometry largeAll = EdgeInsets.all(AppSize.large);
  static EdgeInsetsGeometry xLargeAll = EdgeInsets.all(AppSize.xLarge);

  // 下
  static EdgeInsetsGeometry xSmallBottom = EdgeInsets.only(
    bottom: AppSize.xSmall,
  );
}
