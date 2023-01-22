import '../../../core/firebase/auth/service.dart';
import '../../../core/local/secure_storage/service.dart';
import '../../provider/user/notifier.dart';

import '../../../importer.dart';

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNotifier = ref.watch(userProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                // 一旦サインアウトしたいので
                await FirebaseAuthService().signOut();
                await LocalSecureStorage().delete(
                  LocalSecureStorageKey.uid.name,
                );
                await LocalSecureStorage().delete(
                  LocalSecureStorageKey.email.name,
                );
                await userNotifier.setMode();
                // ignore: use_build_context_synchronously
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('サインアウト'),
            ),
          ],
        ),
      ),
    );
  }
}
