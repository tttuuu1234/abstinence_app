import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// プロフィール登録画面
class ProfileRegisterPage extends ConsumerWidget {
  const ProfileRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール登録'),
      ),
    );
  }
}
