import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:task_10/helper/constants/strings_resource.dart';
import 'package:task_10/helper/extensions/time_of_day_extension.dart';

import '../../data_provider/models/failure/failure.dart';

class DialogUtils {
  DialogUtils._();

  static Future<Either<Failure, DateTime?>> datePickerDialog(
      {required BuildContext context, DateTime? pickedDate}) async {
    try {
      final date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: pickedDate ?? DateTime.now(),
          lastDate: DateTime(2050));
      return right(date);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }

  static Future<Either<Failure, TimeOfDay?>> timePickerDialog(
      {required BuildContext context, TimeOfDay? initialTime}) async {
    try {
      final time = await showTimePicker(
        context: context,
        initialTime: initialTime ??
            TimeOfDay.now() + const TimeOfDay(hour: 0, minute: 10),
        helpText: StringsResource.MIMINUM_TIME_SELECTION_STR,
      );
      return right(time);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }
}
