import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/hint_text.dart';
import '../../components/input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../../services/navigator.dart';
import '../../styles/margin.dart';
import '../../styles/padding.dart';
import '../../extension/context.dart';

/// プロフィール登録画面
class ProfileRegisterPage extends ConsumerWidget {
  const ProfileRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール登録'),
      ),
      body: Padding(
        padding: AppPadding.smallAll,
        child: Column(
          children: [
            InputTextFormFiled(
              textEditingController: TextEditingController(),
              label: const Text('ニックネーム'),
              hintText: HintText.nickname,
            ),
            AppVerticalMargin.xLarge,
            Builder(
              builder: (context) {
                return InputTextFormFiled(
                  textEditingController: TextEditingController(),
                  label: const Text('年齢'),
                  hintText: HintText.age,
                  onTap: () {
                    _showSelectAgeBottomSheet(context);
                  },
                );
              },
            ),
            AppVerticalMargin.xLarge,
            PrimaryButton(
              title: 'プロフィール登録',
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

  Future<dynamic> _showSelectAgeBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: context.getHeight * 0.3,
          width: context.getWidth,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('戻る'),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: context.getHeight * 0.05,
                        width: context.getWidth,
                        child: Center(
                          child: Text(
                            index.toString(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
