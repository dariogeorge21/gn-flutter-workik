import 'package:hive/hive.dart';

part 'verse_model.g.dart';

@HiveType(typeId: 1)
class SavedVerse extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String book;

  @HiveField(2)
  final int chapter;

  @HiveField(3)
  final int verseNumber;

  @HiveField(4)
  final String verseText;

  @HiveField(5)
  final String? personalNote;

  @HiveField(6)
  final List<String> tags;

  @HiveField(7)
  final String? category;

  @HiveField(8)
  final DateTime savedDate;

  @HiveField(9)
  final bool isFavorite;

  @HiveField(10)
  final String? highlightColor;

  SavedVerse({
    required this.id,
    required this.book,
    required this.chapter,
    required this.verseNumber,
    required this.verseText,
    this.personalNote,
    required this.tags,
    this.category,
    required this.savedDate,
    required this.isFavorite,
    this.highlightColor,
  });

  factory SavedVerse.fromJson(Map<String, dynamic> json) {
    return SavedVerse(
      id: json['id'] as String,
      book: json['book'] as String,
      chapter: json['chapter'] as int,
      verseNumber: json['verseNumber'] as int,
      verseText: json['verseText'] as String,
      personalNote: json['personalNote'] as String?,
      tags: List<String>.from(json['tags'] as List),
      category: json['category'] as String?,
      savedDate: DateTime.parse(json['savedDate'] as String),
      isFavorite: json['isFavorite'] as bool,
      highlightColor: json['highlightColor'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'book': book,
      'chapter': chapter,
      'verseNumber': verseNumber,
      'verseText': verseText,
      'personalNote': personalNote,
      'tags': tags,
      'category': category,
      'savedDate': savedDate.toIso8601String(),
      'isFavorite': isFavorite,
      'highlightColor': highlightColor,
    };
  }

  SavedVerse copyWith({
    String? id,
    String? book,
    int? chapter,
    int? verseNumber,
    String? verseText,
    String? personalNote,
    List<String>? tags,
    String? category,
    DateTime? savedDate,
    bool? isFavorite,
    String? highlightColor,
  }) {
    return SavedVerse(
      id: id ?? this.id,
      book: book ?? this.book,
      chapter: chapter ?? this.chapter,
      verseNumber: verseNumber ?? this.verseNumber,
      verseText: verseText ?? this.verseText,
      personalNote: personalNote ?? this.personalNote,
      tags: tags ?? this.tags,
      category: category ?? this.category,
      savedDate: savedDate ?? this.savedDate,
      isFavorite: isFavorite ?? this.isFavorite,
      highlightColor: highlightColor ?? this.highlightColor,
    );
  }
}
