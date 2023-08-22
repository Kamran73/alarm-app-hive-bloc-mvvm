import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'alarm_model.g.dart';

@HiveType(typeId: 1)
class AlarmModel extends Equatable {
  @HiveField(0)
  final TimeOfDay time;
  @HiveField(1)
  final DateTime date;

  const AlarmModel({required this.time, required this.date});

  @override
  List<Object?> get props => [time, date];
}
