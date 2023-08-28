import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:task_10/helper/constants/strings_resource.dart';

import '../../data_provider/models/failure/failure.dart';

class DialogUtils {
  DialogUtils._();

  static Future<Either<Failure, DateTime?>> datePickerDialog(
      {required BuildContext context, DateTime? previousAlarmDate}) async {
    try {
      final date = await showDatePicker(
          context: context,
          initialDate: previousAlarmDate ?? DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2050));
      return right(date);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }

  static Future<Either<Failure, TimeOfDay?>> timePickerDialog(
      {required BuildContext context,
      required TimeOfDay previousAlarmTime}) async {
    try {
      final time = await showTimePicker(
        context: context,
        initialTime: previousAlarmTime,
        helpText: StringsResource.MIMINUM_TIME_SELECTION_STR,
      );
      return right(time);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }

  static void alarmEditOrDeleteDialog({
    required BuildContext context,
    required VoidCallback onDeletePressed,
    required VoidCallback onEditPressed,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Do you want to edit or delete?'),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                onEditPressed();
              },
              child: const Text(StringsResource.EDIT_ALARM_STR)),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                onDeletePressed();
              },
              child: const Text(StringsResource.DELETE_ALARM_STR)),
        ],
      ),
    );
  }
}
