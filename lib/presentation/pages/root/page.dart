import 'package:abstinence_app/presentation/pages/sign_up/page.dart';
import 'package:abstinence_app/presentation/styles/colors.dart';
import 'package:abstinence_app/presentation/styles/margin.dart';
import 'package:flutter/material.dart';

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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
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
