import 'package:hive/hive.dart';

part 'playlist_model.g.dart';

@HiveType(typeId: 4)
class Playlist extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String? description;

  @HiveField(3)
  final List<String> trackIds;

  @HiveField(4)
  final DateTime createdAt;

  @HiveField(5)
  final DateTime modifiedAt;

  @HiveField(6)
  final String? coverImagePath;

  Playlist({
    required this.id,
    required this.name,
    this.description,
    required this.trackIds,
    required this.createdAt,
    required this.modifiedAt,
    this.coverImagePath,
  });

  factory Playlist.fromJson(Map<String, dynamic> json) {
    return Playlist(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      trackIds: List<String>.from(json['trackIds'] as List),
      createdAt: DateTime.parse(json['createdAt'] as String),
      modifiedAt: DateTime.parse(json['modifiedAt'] as String),
      coverImagePath: json['coverImagePath'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'trackIds': trackIds,
      'createdAt': createdAt.toIso8601String(),
      'modifiedAt': modifiedAt.toIso8601String(),
      'coverImagePath': coverImagePath,
    };
  }

  Playlist copyWith({
    String? id,
    String? name,
    String? description,
    List<String>? trackIds,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? coverImagePath,
  }) {
    return Playlist(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      trackIds: trackIds ?? this.trackIds,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      coverImagePath: coverImagePath ?? this.coverImagePath,
    );
  }
}
