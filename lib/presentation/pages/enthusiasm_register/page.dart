import 'package:abstinence_app/presentation/components/hint_text.dart';
import 'package:abstinence_app/presentation/components/multi_input_text_form_field/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/primary_button/widget.dart';
import '../../services/navigator.dart';
import '../../styles/margin.dart';
import '../../styles/padding.dart';

/// 意気込み登録画面
class EnthusiasmRegisterPage extends ConsumerWidget {
  const EnthusiasmRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('意気込み登録'),
      ),
      body: Padding(
        padding: AppPadding.smallAll,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'あなたの意気込みは登録されている方全てに公開されます。\n是非あなたの禁！欲！に対しての熱い意気込みを記入してください。\nそして、世界に示しましょう。\nあなたの覚悟を。',
              ),
              AppVerticalMargin.xLarge,
              MultiInputTextFormFiled(
                textEditingController: TextEditingController(),
                labelText: '意気込み',
                hintText: HintText.enthusiasm,
              ),
              AppVerticalMargin.xLarge,
              PrimaryButton(
                title: 'プロフィール登録',
                onPressed: () async {
                  await NavigatorService.push<EnthusiasmRegisterPage>(
                    context: context,
                    page: const EnthusiasmRegisterPage(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
