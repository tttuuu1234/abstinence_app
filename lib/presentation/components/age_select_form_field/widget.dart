import 'package:abstinence_app/importer.dart';
import 'package:abstinence_app/presentation/components/input_text_form_field/widget.dart';
import 'package:abstinence_app/presentation/validator/validator.dart';

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
