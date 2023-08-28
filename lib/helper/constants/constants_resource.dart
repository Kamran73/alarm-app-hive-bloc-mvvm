import 'package:flutter/material.dart';

class ConstantsResource {
  ConstantsResource._();

  // hive boxes
  static const String HIVE_ALARM_BOX_NAME = 'alarms';

  // loading state time
  static const Duration LOADING_STATE_DURATION = Duration(milliseconds: 2);

  // notification service constants
  static const ALARM_NOTIFICATION_CHANNEL_KEY = 'alarm-notifications';
  static const ALARM_NOTIFICATION_CHANNEL_NAME = 'Alarm Notifications';
  static const ALARM_NOTIFICATION_CHANNEL_DESCRIPTION = 'Alarm Notifications';

  // minimum time added from current time
  static const MINIMUM_TIME_ADDED_FROM_CURRENT_TIME =
      TimeOfDay(hour: 0, minute: 10);
}
