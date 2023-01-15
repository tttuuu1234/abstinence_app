import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  /// 認証済み
  factory UserState.authenticated() = UserStateAuthenticated;

  /// 未認証
  factory UserState.unAuthenticated() = UserStateUnAuthenticated;
}
