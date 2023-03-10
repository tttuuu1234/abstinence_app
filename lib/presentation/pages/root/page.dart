import '../home/widget.dart';
import '../un_authenticated_home/page.dart';
import '../../provider/user/notifier.dart';

import '../../../importer.dart';

/// ルート画面
class RootPage extends ConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return user.map(
      authenticated: (_) => const HomePage(),
      unAuthenticated: (_) => const UnAuthenticatedHomePage(),
    );
  }
}
