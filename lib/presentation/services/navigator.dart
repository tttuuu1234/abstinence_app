import 'package:flutter/material.dart';

class NavigatorService {
  static Future<void> push<T>({
    required BuildContext context,
    required Widget page,
  }) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
