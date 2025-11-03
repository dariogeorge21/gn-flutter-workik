import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gnosis_mobile/presentation/providers/auth_provider.dart';

String? routeGuard(ProviderRef ref, GoRouterState state) {
  final authState = ref.read(authProvider);
  final isAuthenticated = authState.isAuthenticated;
  final hasCompletedOnboarding = true; // This should come from shared preferences

  // If user is not authenticated and trying to access protected routes
  if (!isAuthenticated &&
      !['/splash', '/onboarding', '/login', '/register']
          .contains(state.matchedLocation)) {
    return '/login';
  }

  // If user is authenticated and trying to access auth routes
  if (isAuthenticated &&
      ['/login', '/register', '/onboarding'].contains(state.matchedLocation)) {
    return '/home';
  }

  // If user hasn't completed onboarding
  if (!hasCompletedOnboarding && state.matchedLocation != '/onboarding') {
    return '/onboarding';
  }

  return null;
}
