import '../../../importer.dart';

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                // 一旦サインアウトしたいので
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
