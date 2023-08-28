import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_10/data_provider/models/alarm_model/alarm_model.dart';

import '../../../helper/services/local_notifications_service/awesome_notification_services.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationState> {
  final AwesomeNotificationsService notificationsService;

  NotificationsCubit({required this.notificationsService})
      : super(const NotificationState());

  Future<void> addNotificationForAlarm(AlarmModel alarm) async {
    await notificationsService.showNotifications(alarm: alarm);
  }

  Future<void> cancelNotification(int id) async {
    await notificationsService.cancelNotification(id: id);
  }
}
