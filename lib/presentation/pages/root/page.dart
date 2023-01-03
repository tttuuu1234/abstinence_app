import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Todo: アプリのロゴにしたい
            const FlutterLogo(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('新規登録'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }
}
