import 'package:abstinence_app/presentation/pages/home/widget.dart';
import 'package:abstinence_app/presentation/provider/user/notifier.dart';

import '../../../importer.dart';
import '../../components/primary_button/widget.dart';
import '../sign_up_input/page.dart';

/// ルート画面
class RootPage extends ConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return user.map(
      authenticated:(_) => const HomePage(),
      unAuthenticated:(_) => const UnAuthenticatedPage(),
    );
  }
}

class UnAuthenticatedPage extends StatelessWidget {
  const UnAuthenticatedPage({
    Key? key,
  }) : super(key: key);

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
                    onPressed: () async {
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
