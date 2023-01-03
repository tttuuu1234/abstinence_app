import '../../../importer.dart';
import '../../components/hint_text.dart';
import '../../components/input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../profile_register/page.dart';

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
