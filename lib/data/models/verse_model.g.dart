// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedVerseAdapter extends TypeAdapter<SavedVerse> {
  @override
  final int typeId = 1;

  @override
  SavedVerse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavedVerse(
      id: fields[0] as String,
      book: fields[1] as String,
      chapter: fields[2] as int,
      verseNumber: fields[3] as int,
      verseText: fields[4] as String,
      personalNote: fields[5] as String?,
      tags: (fields[6] as List).cast<String>(),
      category: fields[7] as String?,
      savedDate: fields[8] as DateTime,
      isFavorite: fields[9] as bool,
      highlightColor: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SavedVerse obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.book)
      ..writeByte(2)
      ..write(obj.chapter)
      ..writeByte(3)
      ..write(obj.verseNumber)
      ..writeByte(4)
      ..write(obj.verseText)
      ..writeByte(5)
      ..write(obj.personalNote)
      ..writeByte(6)
      ..write(obj.tags)
      ..writeByte(7)
      ..write(obj.category)
      ..writeByte(8)
      ..write(obj.savedDate)
      ..writeByte(9)
      ..write(obj.isFavorite)
      ..writeByte(10)
      ..write(obj.highlightColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedVerseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
