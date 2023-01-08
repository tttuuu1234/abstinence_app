import 'package:abstinence_app/presentation/components/age_select_form_field/widget.dart';

import '../../../importer.dart';
import '../../components/hint_text.dart';
import '../../components/input_text_form_field/widget.dart';
import '../../components/primary_button/widget.dart';
import '../enthusiasm_register/page.dart';

/// プロフィール登録画面
class ProfileRegisterPage extends ConsumerStatefulWidget {
  const ProfileRegisterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileRegisterPageState();
}

class _ProfileRegisterPageState extends ConsumerState<ProfileRegisterPage> {
  final formKey = GlobalKey<FormState>();
  int age = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setAge(int value) {
    setState(() {
      age = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール登録'),
      ),
      body: Padding(
        padding: AppPadding.smallAll,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputTextFormFiled(
                textEditingController: TextEditingController(),
                label: const Text('ニックネーム'),
                hintText: HintText.nickname,
              ),
              AppVerticalMargin.xLarge,
              // Builder(
              //   builder: (context) {
              //     return InputTextFormFiled(
              //       textEditingController: TextEditingController(),
              //       label: const Text('年齢'),
              //       hintText: HintText.age,
              //       onTap: () {
              //         _showSelectAgeBottomSheet(context);
              //       },
              //     );
              //   },
              // ),
              AgeSelectFormField(
                showBottomSheet: () async {
                  await _showSelectAgeBottomSheet(context);
                  return age;
                },
              ),
              AppVerticalMargin.xLarge,
              PrimaryButton(
                title: '意気込み入力へ',
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

  Future<void> _showSelectAgeBottomSheet(BuildContext context) {
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
                      onTap: () {
                        setAge(index - 1);
                        Navigator.pop(context);
                      },
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
