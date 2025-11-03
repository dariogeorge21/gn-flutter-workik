import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gnosis_mobile/data/models/user_model.dart';
import 'package:gnosis_mobile/data/repositories/auth_repository.dart';
import 'package:gnosis_mobile/core/errors/failures.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.read(authRepositoryProvider));
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository) : super(const AuthState.initial());

  Future<void> signIn(String email, String password) async {
    state = const AuthState.loading();
    
    final result = await _authRepository.signIn(email, password);
    
    result.fold(
      (failure) => state = AuthState.error(failure),
      (user) => state = AuthState.authenticated(user),
    );
  }

  Future<void> signUp(String email, String password, String name) async {
    state = const AuthState.loading();
    
    final result = await _authRepository.signUp(email, password, name);
    
    result.fold(
      (failure) => state = AuthState.error(failure),
      (user) => state = AuthState.authenticated(user),
    );
  }

  Future<void> signOut() async {
    state = const AuthState.loading();
    
    final result = await _authRepository.signOut();
    
    result.fold(
      (failure) => state = AuthState.error(failure),
      (_) => state = const AuthState.unauthenticated(),
    );
  }

  Future<void> checkAuthStatus() async {
    final result = await _authRepository.getCurrentUser();
    
    result.fold(
      (failure) => state = const AuthState.unauthenticated(),
      (user) => state = AuthState.authenticated(user),
    );
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(User user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(Failure failure) = _Error;
  
  bool get isAuthenticated => this is _Authenticated;
  bool get isLoading => this is _Loading;
  User? get user => mapOrNull(
    authenticated: (state) => state.user,
  );
}
