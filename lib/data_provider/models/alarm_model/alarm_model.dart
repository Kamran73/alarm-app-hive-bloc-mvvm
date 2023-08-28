import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'alarm_model.g.dart';

@HiveType(typeId: 1)
class AlarmModel {
  @HiveField(0)
  TimeOfDay time;
  @HiveField(1)
  DateTime date;
  @HiveField(2, defaultValue: false)
  bool isActive;
  @HiveField(3)
  int id;

  AlarmModel({
    required this.time,
    required this.date,
    required this.isActive,
    required this.id,
  });
}
