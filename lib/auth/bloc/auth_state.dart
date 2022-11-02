part of 'auth_bloc.dart';

@immutable
abstract class AuthState {
  final bool isLoading;

  const AuthState({required this.isLoading});
}

class AuthStateLoggedIn extends AuthState {
  const AuthStateLoggedIn({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut({required bool isLoading})
      : super(isLoading: isLoading);
}
