import 'package:package_info_plus/package_info_plus.dart';

import 'importer.dart';
import 'presentation/pages/root/page.dart';

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
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '禁！欲！',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColor.white,
        appBarTheme: const AppBarTheme().copyWith(
          foregroundColor: AppColor.black,
          backgroundColor: AppColor.white,
          elevation: 0,
        ),
      ),
      home: const RootPage(),
    );
  }
}
