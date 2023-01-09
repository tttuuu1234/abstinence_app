import 'package:abstinence_app/presentation/components/age_select_form_field/widget.dart';
import 'package:abstinence_app/presentation/pages/profile_input/notifier.dart';

import '../../../importer.dart';
import '../../components/hint_text.dart';
import '../../components/input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../../validator/validator.dart';
import '../enthusiasm_register/page.dart';

/// プロフィール登録画面
class ProfileInputPage extends ConsumerStatefulWidget {
  const ProfileInputPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileInputPageState();
}

class _ProfileInputPageState extends ConsumerState<ProfileInputPage> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController nicknameController;
  late TextEditingController ageController;

  @override
  void initState() {
    nicknameController = TextEditingController(text: '');
    ageController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    nicknameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  void setAge(int value) {
    setState(() {
      ageController.value = TextEditingValue(text: value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileInputProvider);
    final notifier = ref.watch(profileInputProvider.notifier);
    final selectableAgeList = ref.read(selectableAgeListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール登録'),
      ),
      body: Padding(
        padding: AppPadding.smallAll,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                InputTextFormFiled(
                  textEditingController: nicknameController,
                  label: const Text('ニックネーム'),
                  hintText: HintText.nickname,
                  maxLength: 10,
                  validateRules: [
                    ValidatorControl.required(),
                    ValidatorControl.maxLength(),
                  ],
                  onChanged: (value) {
                    notifier
                      ..setNickname(value)
                      ..checkAllInputted();
                  },
                ),
                AppVerticalMargin.xLarge,
                AgeSelectFormField(
                  textEditingController: ageController,
                  showBottomSheet: () async {
                    await _showSelectAgeBottomSheet(context, selectableAgeList);
                    final age = ageController.text.isEmpty
                        ? null
                        : int.parse(ageController.text);
                    notifier
                      ..setAge(age)
                      ..checkAllInputted();

                    return age;
                  },
                ),
                AppVerticalMargin.xLarge,
                PrimaryButton(
                  title: '意気込み入力へ',
                  onPressed: state.isALlInputted &&
                          formKey.currentState!.validate()
                      ? () async {
                          await NavigatorService.push<EnthusiasmRegisterPage>(
                            context: context,
                            page: const EnthusiasmRegisterPage(),
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

  Future<void> _showSelectAgeBottomSheet(
    BuildContext context,
    List<int> selectableAgeList,
  ) {
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
                  itemCount: selectableAgeList.length,
                  itemBuilder: (context, index) {
                    final age = selectableAgeList[index];

                    return InkWell(
                      onTap: () {
                        setAge(age);
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: context.getHeight * 0.05,
                        width: context.getWidth,
                        child: Center(
                          child: Text(
                            age.toString(),
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
