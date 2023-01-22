import '../../../importer.dart';
import '../../components/hint_text.dart';
import '../../components/input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../../provider/user/notifier.dart';
import '../../validator/validator.dart';
import 'notifier.dart';

/// サインイン画面
class SignInInputPage extends ConsumerStatefulWidget {
  const SignInInputPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignInInputPageState();
}

class _SignInInputPageState extends ConsumerState<SignInInputPage> {
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
    final state = ref.watch(signInInputProvider);
    final notifier = ref.watch(signInInputProvider.notifier);
    final userNotifier = ref.watch(userProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('サインイン'),
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
                title: 'サインイン',
                onPressed:
                    state.isALlInputted && formKey.currentState!.validate()
                        ? () async {
                            await notifier.signIn(
                              onSuccess: () async {
                                await userNotifier.setMode();
                              },
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
