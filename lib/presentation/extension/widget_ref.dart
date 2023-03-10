import '../../importer.dart';

import '../../provider/key.dart';
import '../components/loading_indicator/widget.dart';

extension WidgetRefEx on WidgetRef {
  void handleAsyncValue<T>(
    ProviderListenable<AsyncValue<T>> asyncValueProvider, {
    void Function(BuildContext context, T data)? complete,
    String? completeMessage,
    String? errorMessage,
  }) =>
      listen<AsyncValue<T>>(
        asyncValueProvider,
        (_, next) async {
          final loadingNotifier = read(loadingProvider.notifier);
          if (next.isLoading) {
            loadingNotifier.show();
            return;
          }

          next.when(
            data: (data) async {
              loadingNotifier.hide();
              // 完了メッセージがあればスナックバーを表示する
              if (completeMessage != null) {
                final messengerState =
                    read(scaffoldMessengerKeyProvider).currentState;
                messengerState?.showSnackBar(
                  SnackBar(
                    content: Text(completeMessage),
                  ),
                );
              }

              complete?.call(
                NavigatorService.navigatorKey.currentContext!,
                data,
              );
            },
            error: (e, s) async {
              loadingNotifier.hide();
              // エラーが発生したらスナックバーを表示する
              final messengerState =
                  read(scaffoldMessengerKeyProvider).currentState;
              final message = errorMessage == null || errorMessage.isEmpty
                  ? e.toString()
                  : errorMessage;
              messengerState?.showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            },
            loading: loadingNotifier.show,
          );
        },
      );
}
