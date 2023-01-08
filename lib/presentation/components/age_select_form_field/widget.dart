import 'package:abstinence_app/importer.dart';
import 'package:abstinence_app/presentation/validator/validator.dart';

class AgeSelectFormField extends FormField<int> {
  AgeSelectFormField({
    super.key,
    int initialValue = 0,
    required Future<int> Function() showBottomSheet,
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
          initialValue: initialValue,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          builder: (FormFieldState<int> state) {
            return Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    final age = await showBottomSheet();
                    print('Form内');
                    print(age);
                    state.didChange(age);
                  },
                  child: Text('押して'),
                ),
                Text(
                  state.value == null ? '何もない' : state.value!.toString(),
                ),
                state.hasError // Validatorの結果がエラー時の表示をここで対応
                    ? Text(
                        state.errorText!,
                        style: TextStyle(color: Colors.red),
                      )
                    : Container(),
              ],
            );
          },
        );
}
