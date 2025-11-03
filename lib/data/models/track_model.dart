import 'package:hive/hive.dart';

part 'track_model.g.dart';

@HiveType(typeId: 2)
class DownloadedTrack extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String artist;

  @HiveField(3)
  final String localPath;

  @HiveField(4)
  final DateTime downloadedAt;

  @HiveField(5)
  final int fileSize;

  @HiveField(6)
  final String? albumArtPath;

  DownloadedTrack({
    required this.id,
    required this.title,
    required this.artist,
    required this.localPath,
    required this.downloadedAt,
    required this.fileSize,
    this.albumArtPath,
  });

  factory DownloadedTrack.fromJson(Map<String, dynamic> json) {
    return DownloadedTrack(
      id: json['id'] as String,
      title: json['title'] as String,
      artist: json['artist'] as String,
      localPath: json['localPath'] as String,
      downloadedAt: DateTime.parse(json['downloadedAt'] as String),
      fileSize: json['fileSize'] as int,
      albumArtPath: json['albumArtPath'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'artist': artist,
      'localPath': localPath,
      'downloadedAt': downloadedAt.toIso8601String(),
      'fileSize': fileSize,
      'albumArtPath': albumArtPath,
    };
  }

  DownloadedTrack copyWith({
    String? id,
    String? title,
    String? artist,
    String? localPath,
    DateTime? downloadedAt,
    int? fileSize,
    String? albumArtPath,
  }) {
    return DownloadedTrack(
      id: id ?? this.id,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      localPath: localPath ?? this.localPath,
      downloadedAt: downloadedAt ?? this.downloadedAt,
      fileSize: fileSize ?? this.fileSize,
      albumArtPath: albumArtPath ?? this.albumArtPath,
    );
  }
}
