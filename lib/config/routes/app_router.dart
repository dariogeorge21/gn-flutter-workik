import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gnosis_mobile/presentation/screens/splash/splash_screen.dart';
import 'package:gnosis_mobile/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:gnosis_mobile/presentation/screens/auth/login_screen.dart';
import 'package:gnosis_mobile/presentation/screens/auth/register_screen.dart';
import 'package:gnosis_mobile/presentation/screens/home/home_screen.dart';
import 'package:gnosis_mobile/presentation/screens/bible/bible_reader_screen.dart';
import 'package:gnosis_mobile/presentation/screens/bible/saved_verses_screen.dart';
import 'package:gnosis_mobile/presentation/screens/prayers/prayers_screen.dart';
import 'package:gnosis_mobile/presentation/screens/prayers/prayer_detail_screen.dart';
import 'package:gnosis_mobile/presentation/screens/rosary/rosary_screen.dart';
import 'package:gnosis_mobile/presentation/screens/chat/chat_screen.dart';
import 'package:gnosis_mobile/presentation/screens/music/music_library_screen.dart';
import 'package:gnosis_mobile/presentation/screens/music/player_screen.dart';
import 'package:gnosis_mobile/presentation/screens/community/community_screen.dart';
import 'package:gnosis_mobile/presentation/screens/saints/saints_screen.dart';
import 'package:gnosis_mobile/presentation/screens/saints/saint_detail_screen.dart';
import 'package:gnosis_mobile/presentation/screens/profile/profile_screen.dart';
import 'package:gnosis_mobile/presentation/screens/profile/settings_screen.dart';
import 'package:gnosis_mobile/config/routes/route_guards.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      return routeGuard(ref, state);
    },
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/bible',
        name: 'bible',
        builder: (context, state) => const BibleReaderScreen(),
      ),
      GoRoute(
        path: '/saved-verses',
        name: 'savedVerses',
        builder: (context, state) => const SavedVersesScreen(),
      ),
      GoRoute(
        path: '/prayers',
        name: 'prayers',
        builder: (context, state) => const PrayersScreen(),
      ),
      GoRoute(
        path: '/prayers/:id',
        name: 'prayerDetail',
        builder: (context, state) {
          final prayerId = state.pathParameters['id']!;
          return PrayerDetailScreen(prayerId: prayerId);
        },
      ),
      GoRoute(
        path: '/rosary',
        name: 'rosary',
        builder: (context, state) => const RosaryScreen(),
      ),
      GoRoute(
        path: '/chat',
        name: 'chat',
        builder: (context, state) => const ChatScreen(),
      ),
      GoRoute(
        path: '/music',
        name: 'music',
        builder: (context, state) => const MusicLibraryScreen(),
      ),
      GoRoute(
        path: '/player',
        name: 'player',
        builder: (context, state) => const PlayerScreen(),
      ),
      GoRoute(
        path: '/community',
        name: 'community',
        builder: (context, state) => const CommunityScreen(),
      ),
      GoRoute(
        path: '/saints',
        name: 'saints',
        builder: (context, state) => const SaintsScreen(),
      ),
      GoRoute(
        path: '/saints/:id',
        name: 'saintDetail',
        builder: (context, state) {
          final saintId = state.pathParameters['id']!;
          return SaintDetailScreen(saintId: saintId);
        },
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
});
