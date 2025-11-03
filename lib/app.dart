import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gnosis_mobile/config/routes/app_router.dart';
import 'package:gnosis_mobile/config/theme/app_theme.dart';
import 'package:gnosis_mobile/presentation/providers/theme_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class GnosisApp extends ConsumerWidget {
  final FlutterSecureStorage secureStorage;

  const GnosisApp({super.key, required this.secureStorage});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Gnosis',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        // Add your localization delegates here
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
        Locale('ml', 'IN'),
      ],
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1.0, // Prevent system font scaling
          ),
          child: child!,
        );
      },
    );
  }
}
