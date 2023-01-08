import '../../../importer.dart';
import '../../components/primary_button/widget.dart';
import '../sign_up_input/page.dart';


/// ルート画面
class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Todo: アプリのロゴにしたい
              const Expanded(
                child: FlutterLogo(size: 100),
              ),
              Column(
                children: [
                  PrimaryButton(
                    title: '新規登録',
                    onPressed: () async{
                      await NavigatorService.push<SignUpInputPage>(
                        context: context,
                        page: const SignUpInputPage(),
                      );
                    },
                  ),
                  AppVerticalMargin.small,
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'ログイン',
                      style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AppVerticalMargin.small,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
