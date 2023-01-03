import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 意気込み登録画面
class EnthusiasmRegisterPage extends ConsumerWidget {
  const EnthusiasmRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('意気込み登録'),
      ),
    );
  }
}
