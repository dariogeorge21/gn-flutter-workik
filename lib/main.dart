import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gnosis_mobile/app.dart';
import 'package:gnosis_mobile/data/models/user_model.dart';
import 'package:gnosis_mobile/data/models/verse_model.dart';
import 'package:gnosis_mobile/data/models/track_model.dart';
import 'package:gnosis_mobile/data/models/prayer_history_model.dart';
import 'package:gnosis_mobile/data/models/playlist_model.dart';
import 'package:gnosis_mobile/config/env/env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();
  
  // Register Hive adapters
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(SavedVerseAdapter());
  Hive.registerAdapter(DownloadedTrackAdapter());
  Hive.registerAdapter(PrayerHistoryAdapter());
  Hive.registerAdapter(PlaylistAdapter());

  // Open Hive boxes
  await Hive.openBox<User>('userBox');
  await Hive.openBox<SavedVerse>('savedVersesBox');
  await Hive.openBox<DownloadedTrack>('downloadedTracksBox');
  await Hive.openBox<PrayerHistory>('prayerHistoryBox');
  await Hive.openBox<Playlist>('playlistsBox');
  await Hive.openBox('cacheBox');

  // Initialize Supabase
  await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseAnonKey,
  );

  // Initialize secure storage
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  runApp(
    ProviderScope(
      child: GnosisApp(secureStorage: secureStorage),
    ),
  );
}
