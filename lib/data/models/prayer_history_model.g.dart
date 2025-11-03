// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_history_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PrayerHistoryAdapter extends TypeAdapter<PrayerHistory> {
  @override
  final int typeId = 3;

  @override
  PrayerHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PrayerHistory(
      id: fields[0] as String,
      prayerId: fields[1] as String,
      prayedAt: fields[2] as DateTime,
      duration: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PrayerHistory obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.prayerId)
      ..writeByte(2)
      ..write(obj.prayedAt)
      ..writeByte(3)
      ..write(obj.duration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrayerHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
