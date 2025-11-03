// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DownloadedTrackAdapter extends TypeAdapter<DownloadedTrack> {
  @override
  final int typeId = 2;

  @override
  DownloadedTrack read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DownloadedTrack(
      id: fields[0] as String,
      title: fields[1] as String,
      artist: fields[2] as String,
      localPath: fields[3] as String,
      downloadedAt: fields[4] as DateTime,
      fileSize: fields[5] as int,
      albumArtPath: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DownloadedTrack obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.artist)
      ..writeByte(3)
      ..write(obj.localPath)
      ..writeByte(4)
      ..write(obj.downloadedAt)
      ..writeByte(5)
      ..write(obj.fileSize)
      ..writeByte(6)
      ..write(obj.albumArtPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadedTrackAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
