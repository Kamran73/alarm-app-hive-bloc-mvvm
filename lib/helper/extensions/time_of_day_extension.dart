import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  double get toDouble => (hour + minute / 60.0);

  TimeOfDay operator +(TimeOfDay other) {
    final totalMinutes = hour * 60 + minute + other.hour * 60 + other.minute;
    final newHours = totalMinutes ~/ 60;
    final newMinutes = totalMinutes % 60;
    return TimeOfDay(hour: newHours, minute: newMinutes);
  }

  bool operator <(TimeOfDay other) {
    if (hour < other.hour) {
      return true;
    } else if (hour == other.hour) {
      return minute < other.minute;
    }
    return false;
  }

  bool operator <=(TimeOfDay other) {
    return this < other || this == other;
  }

  bool operator >(TimeOfDay other) {
    return this <= other;
  }

  bool operator >=(TimeOfDay other) {
    return this < other;
  }
}
