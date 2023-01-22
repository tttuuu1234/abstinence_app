import '../../../importer.dart';
import '../../components/hint_text.dart';
import '../../components/input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../../validator/validator.dart';
import '../profile_input/page.dart';
import 'notifier.dart';

/// 新規登録認証情報入力画面
class SignUpInputPage extends ConsumerStatefulWidget {
  const SignUpInputPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpInputPageState();
}

class _SignUpInputPageState extends ConsumerState<SignUpInputPage> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController(text: '');
    passwordController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signUpInputProvider);
    final notifier = ref.watch(signUpInputProvider.notifier);

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
                textEditingController: emailController,
                label: const Text('メールアドレス'),
                hintText: HintText.email,
                textInputType: TextInputType.emailAddress,
                validateRules: [
                  ValidatorControl.required(),
                  ValidatorControl.email(),
                ],
                onChanged: (value) {
                  notifier
                    ..setEmail(value)
                    ..checkAllInputted();
                },
              ),
              AppVerticalMargin.xLarge,
              InputTextFormFiled(
                textEditingController: passwordController,
                label: const Text('パスワード'),
                hintText: HintText.password,
                textInputType: TextInputType.emailAddress,
                maxLength: 20,
                validateRules: [
                  ValidatorControl.required(),
                  ValidatorControl.between(),
                ],
                onChanged: (value) {
                  notifier
                    ..setPassword(value)
                    ..checkAllInputted();
                },
              ),
              AppVerticalMargin.xLarge,
              PrimaryButton(
                title: 'プロフィール入力へ',
                onPressed:
                    state.isALlInputted && formKey.currentState!.validate()
                        ? () async {
                            await NavigatorService.push<ProfileInputPage>(
                              page: const ProfileInputPage(),
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
