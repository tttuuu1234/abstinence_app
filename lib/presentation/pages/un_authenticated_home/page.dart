import 'package:flutter/material.dart';

import '../../components/primary_button/widget.dart';
import '../../services/navigator.dart';
import '../../styles/colors.dart';
import '../../styles/margin.dart';
import '../sign_in_input/page.dart';
import '../sign_up_input/page.dart';

/// 未認証ホーム画面
class UnAuthenticatedHomePage extends StatelessWidget {
  const UnAuthenticatedHomePage({
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
                    onPressed: () async {
                      await NavigatorService.push<SignUpInputPage>(
                        context: context,
                        page: const SignInInputPage(),
                      );
                    },
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
