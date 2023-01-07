import '../../../importer.dart';
import '../../components/hint_text.dart';
import '../../components/input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../../validator/validator.dart';
import '../profile_register/page.dart';

/// 新規登録認証情報入力画面
class SignUpInputPage extends ConsumerStatefulWidget {
  const SignUpInputPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpInputPageState();
}

class _SignUpInputPageState extends ConsumerState<SignUpInputPage> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  void initState() {
    super.initState();
  }

  void setEmail(String value) {
    setState(() {
      email = value;
    });
  }

  void setPassword(String value) {
    setState(() {
      password = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: AppPadding.smallAll,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              InputTextFormFiled(
                label: const Text('メールアドレス'),
                hintText: HintText.email,
                maxLength: 20,
                validateRules: [
                  ValidatorControl.required(),
                  ValidatorControl.maxLength(20)
                ],
                onChanged: setEmail,
              ),
              AppVerticalMargin.xLarge,
              InputTextFormFiled(
                label: const Text('パスワード'),
                hintText: HintText.password,
                maxLength: 20,
                validateRules: [
                  ValidatorControl.required(),
                  ValidatorControl.maxLength(20)
                ],
                onChanged: setPassword,
              ),
              AppVerticalMargin.xLarge,
              PrimaryButton(
                title: 'プロフィール入力へ',
                onPressed: email.isNotEmpty &&
                        password.isNotEmpty &&
                        formKey.currentState!.validate()
                    ? () async {
                        await NavigatorService.push<ProfileRegisterPage>(
                          context: context,
                          page: const ProfileRegisterPage(),
                        );
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
