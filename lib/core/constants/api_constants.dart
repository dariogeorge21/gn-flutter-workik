import 'package:gnosis_mobile/config/env/env.dart';

class ApiConstants {
  // Groq API
  static const String groqBaseUrl = 'https://api.groq.com/openai/v1';
  static const String groqChatEndpoint = '/chat/completions';
  static const String groqModel = 'llama-3.3-70b-versatile';
  
  // API.Bible
  static const String bibleBaseUrl = 'https://api.scripture.api.bible/v1';
  static const String bibleId = 'bba9f40183526463-01'; // English version
  static const String bibleBooksEndpoint = '/bibles/$bibleId/books';
  static String bibleChapterEndpoint(String chapterId) => '/bibles/$bibleId/chapters/$chapterId';
  static const String bibleSearchEndpoint = '/bibles/$bibleId/search';
  
  // Spotify API
  static const String spotifyBaseUrl = 'https://api.spotify.com/v1';
  static const String spotifySearchEndpoint = '/search';
  static const String spotifyTokenUrl = 'https://accounts.spotify.com/api/token';
  
  // Supabase
  static String get supabaseUrl => Env.supabaseUrl;
  static String get supabaseAnonKey => Env.supabaseAnonKey;
  
  // Headers
  static Map<String, String> get groqHeaders => {
    'Authorization': 'Bearer ${Env.groqApiKey}',
    'Content-Type': 'application/json',
  };
  
  static Map<String, String> get bibleHeaders => {
    'api-key': Env.bibleApiKey,
    'Content-Type': 'application/json',
  };
  
  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
