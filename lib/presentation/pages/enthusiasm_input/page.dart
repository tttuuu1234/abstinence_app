import 'package:abstinence_app/presentation/pages/enthusiasm_input/notifier.dart';

import '../../../importer.dart';
import '../../components/hint_text.dart';
import '../../components/multi_input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../../validator/validator.dart';
import '../home/widget.dart';

/// 意気込み入力画面
class EnthusiasmInputPage extends ConsumerStatefulWidget {
  const EnthusiasmInputPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnthusiasmInputPageState();
}

class _EnthusiasmInputPageState extends ConsumerState<EnthusiasmInputPage> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController enthusiasmController;

  @override
  void initState() {
    enthusiasmController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    enthusiasmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(enthusiasmInputProvider);
    final notifier = ref.watch(enthusiasmInputProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('意気込み入力'),
      ),
      body: Padding(
        padding: AppPadding.smallAll,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  'あなたの意気込みはアプリユーザー全てに公開されます。\n是非あなたの禁！欲！に対しての熱い意気込みを記入してください。\nそして、世界に示しましょう。\nあなたの覚悟を。',
                ),
                AppVerticalMargin.xLarge,
                MultiInputTextFormFiled(
                  textEditingController: enthusiasmController,
                  labelText: '意気込み',
                  hintText: HintText.enthusiasm,
                  validateRules: [
                    ValidatorControl.required(),
                  ],
                  onChanged: (value) {
                    notifier
                      ..setEnthusiasm(value)
                      ..checkAllInputted();
                  },
                ),
                AppVerticalMargin.xLarge,
                PrimaryButton(
                  title: 'アカウント登録',
                  onPressed:
                      state.isALlInputted && formKey.currentState!.validate()
                          ? () async {
                              await NavigatorService.push<HomePage>(
                                context: context,
                                page: const HomePage(),
                              );
                            }
                          : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
