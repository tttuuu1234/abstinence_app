import 'package:flutter/material.dart';

extension BuildContextEx on BuildContext {
  /// 画面幅取得
  double get getWidth => MediaQuery.of(this).size.width;

  /// 画面高さ取得
  double get getHeight => MediaQuery.of(this).size.height;
}
