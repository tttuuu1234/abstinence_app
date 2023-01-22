import 'dart:developer';

import 'presentation/extension/widget_ref.dart';
import 'presentation/pages/sign_in_input/notifier.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'importer.dart';
import 'presentation/components/loading_indicator/widget.dart';
import 'presentation/pages/home/widget.dart';
import 'presentation/pages/root/page.dart';
import 'provider/key.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  const flavor = String.fromEnvironment('FLAVOR');
  final packageInfo = await PackageInfo.fromPlatform();
  final appInfo = {
    'flavor': flavor,
    'app_name': packageInfo.appName,
    'package_name': packageInfo.packageName,
    'version': packageInfo.version,
    'build_number': packageInfo.buildNumber,
  };
  log(appInfo.toString());
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.handleAsyncValue<void>(
      sigInProvider,
      completeMessage: 'サインインに成功しました',
      errorMessage: '認証に失敗しました。再度お試しください。',
      complete: (context, _) async {
        await NavigatorService.pushRemoveUntil(page: const HomePage());
      },
    );

    return MaterialApp(
      title: '禁！欲！',
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      navigatorKey: NavigatorService.navigatorKey,
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
      builder: (context, child) {
        return Consumer(
          builder: (context, ref, _) {
            final isLoading = ref.watch(loadingProvider);

            return Stack(
              children: [
                child!,
                if (isLoading)
                  const ColoredBox(
                    color: Colors.black26,
                    child: LoadingIndicator(),
                  )
              ],
            );
          },
        );
      },
    );
  }
}
