import '../../../importer.dart';
import '../input_text_form_field/widget.dart';
import '../../validator/validator.dart';

/// 選択可能年齢一覧
final selectableAgeListProvider = Provider<List<int>>((ref) {
  final list = <int>[];
  for (var i = 16; i <= 80; i++) {
    list.add(i);
  }

  return list;
});

/// 年齢選択フィールド
/// Validation可能
class AgeSelectFormField extends FormField<int> {
  AgeSelectFormField({
    super.key,
    required TextEditingController textEditingController,
    // 返却値をnull許可にし、intRequiredのValidatorでの確認を有効にしている
    required Future<int?> Function() showBottomSheet,
  }) : super(
          validator: (value) {
            String? errorMessage;
            final rules = [
              ValidatorControl.intRequired(),
              ValidatorControl.min(),
            ];

            for (final rule in rules) {
              if (rule.validate(value)) {
                errorMessage = rule.getMessage();
                break;
              }
            }

            return errorMessage;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          builder: (state) {
            return GestureDetector(
              onTap: () async {
                final age = await showBottomSheet();
                // 返却値を使用しstateの更新を行うことで、Widget内での値表示の更新、Validatorの発火を行なってくれる
                state.didChange(age);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputTextFormFiled(
                    textEditingController: textEditingController,
                    label: Text(
                      state.value == null ? '年齢を選択してください' : '年齢',
                    ),
                    enabled: false,
                  ),
                  state.hasError
                      ? Text(
                          state.errorText!,
                          style: const TextStyle(color: AppColor.red),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            );
          },
        );
}

class AgeUtil {
  AgeUtil._();

  /// 年齢選択ボトムシート表示
  static Future<void> showBottomSheet({
    required BuildContext context,
    required List<int> selectableAgeList,
    required void Function(int value) setAge,
  }) {
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
