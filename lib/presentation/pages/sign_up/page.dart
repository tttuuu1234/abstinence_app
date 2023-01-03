import 'package:abstinence_app/presentation/components/hint_text.dart';
import 'package:abstinence_app/presentation/components/primary_button/widget.dart';
import 'package:abstinence_app/presentation/pages/profile_register/page.dart';
import 'package:abstinence_app/presentation/services/navigator.dart';
import 'package:abstinence_app/presentation/styles/margin.dart';
import 'package:abstinence_app/presentation/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/input_text_form_field/widget.dart';

/// 新規登録画面
class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: AppPadding.smallAll,
        child: Column(
          children: [
            InputTextFormFiled(
              textEditingController: TextEditingController(),
              label: const Text('メールアドレス'),
              hintText: HintText.email,
            ),
            AppVerticalMargin.xLarge,
            InputTextFormFiled(
              textEditingController: TextEditingController(),
              label: const Text('パスワード'),
              hintText: HintText.password,
            ),
            AppVerticalMargin.xLarge,
            PrimaryButton(
              title: '登録',
              onPressed: () async {
                await NavigatorService.push<ProfileRegisterPage>(
                  context: context,
                  page: const ProfileRegisterPage(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
