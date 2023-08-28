import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class TimeOfDayAdapter extends TypeAdapter<TimeOfDay> {
  @override
  final typeId = 200;

  @override
  TimeOfDay read(BinaryReader reader) {
    final hour = reader.readByte();
    final minute = reader.readByte();
    return TimeOfDay(hour: hour, minute: minute);
  }

  @override
  void write(BinaryWriter writer, TimeOfDay obj) {
    writer.writeByte(obj.hour);
    writer.writeByte(obj.minute);
  }
}
