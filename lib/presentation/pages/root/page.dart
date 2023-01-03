import '../sign_up/page.dart';

import '../../../importer.dart';
import '../../components/primary_button/widget.dart';


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
                      await NavigatorService.push<SignUpPage>(
                        context: context,
                        page: const SignUpPage(),
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
