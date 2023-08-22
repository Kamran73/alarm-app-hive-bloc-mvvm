import 'package:flutter/material.dart';

extension TimeOfDayToDouble on TimeOfDay {
  double get toDouble => (hour + minute / 60.0);

  TimeOfDay operator +(TimeOfDay other) {
    final totalMinutes = hour * 60 + minute + other.hour * 60 + other.minute;
    final newHours = totalMinutes ~/ 60;
    final newMinutes = totalMinutes % 60;
    return TimeOfDay(hour: newHours, minute: newMinutes);
  }
}
