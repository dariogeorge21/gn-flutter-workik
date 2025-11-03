import 'package:hive/hive.dart';

part 'prayer_history_model.g.dart';

@HiveType(typeId: 3)
class PrayerHistory extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String prayerId;

  @HiveField(2)
  final DateTime prayedAt;

  @HiveField(3)
  final int duration; // seconds

  PrayerHistory({
    required this.id,
    required this.prayerId,
    required this.prayedAt,
    required this.duration,
  });

  factory PrayerHistory.fromJson(Map<String, dynamic> json) {
    return PrayerHistory(
      id: json['id'] as String,
      prayerId: json['prayerId'] as String,
      prayedAt: DateTime.parse(json['prayedAt'] as String),
      duration: json['duration'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'prayerId': prayerId,
      'prayedAt': prayedAt.toIso8601String(),
      'duration': duration,
    };
  }

  PrayerHistory copyWith({
    String? id,
    String? prayerId,
    DateTime? prayedAt,
    int? duration,
  }) {
    return PrayerHistory(
      id: id ?? this.id,
      prayerId: prayerId ?? this.prayerId,
      prayedAt: prayedAt ?? this.prayedAt,
      duration: duration ?? this.duration,
    );
  }
}
