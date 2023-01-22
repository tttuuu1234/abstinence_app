import 'package:flutter/material.dart';

class NavigatorService {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static Future<void> push<T>({required Widget page}) async {
    await Navigator.of(navigatorKey.currentState!.context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static Future<void> pushReplacement<T>({required Widget page}) async {
    await Navigator.of(navigatorKey.currentState!.context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static Future<void> pushRemoveUntil<T>({required Widget page}) async {
    await Navigator.of(navigatorKey.currentState!.context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => page,
      ),
      (route) => route.isFirst,
    );
  }
}
