import 'package:abstinence_app/presentation/pages/root/page.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const flavor = String.fromEnvironment('FLAVOR');
  final packageInfo = await PackageInfo.fromPlatform();
  print('---App情報---');
  print(flavor);
  print(packageInfo.appName);
  print(packageInfo.packageName);
  print(packageInfo.version);
  print(packageInfo.buildNumber);
  print('------------');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '禁！欲！',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootPage(),
    );
  }
}
