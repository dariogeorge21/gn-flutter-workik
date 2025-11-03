import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'GROQ_API_KEY', obfuscate: true)
  static final String groqApiKey = _Env.groqApiKey;

  @EnviedField(varName: 'BIBLE_API_KEY', obfuscate: true)
  static final String bibleApiKey = _Env.bibleApiKey;

  @EnviedField(varName: 'SPOTIFY_CLIENT_ID', obfuscate: true)
  static final String spotifyClientId = _Env.spotifyClientId;

  @EnviedField(varName: 'SPOTIFY_CLIENT_SECRET', obfuscate: true)
  static final String spotifyClientSecret = _Env.spotifyClientSecret;

  @EnviedField(varName: 'SUPABASE_URL')
  static final String supabaseUrl = _Env.supabaseUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static final String supabaseAnonKey = _Env.supabaseAnonKey;
}
