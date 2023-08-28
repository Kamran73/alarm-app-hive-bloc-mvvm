import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:task_10/data_provider/models/alarm_model/alarm_model.dart';
import 'package:task_10/helper/constants/colors_resource.dart';
import 'package:task_10/helper/constants/constants_resource.dart';
import 'package:task_10/helper/constants/strings_resource.dart';

class AwesomeNotificationsService {
  // this class can only produce single object by using singleton pattern
  static final AwesomeNotificationsService _singletonObject =
      AwesomeNotificationsService._internal();

  factory AwesomeNotificationsService() {
    return _singletonObject;
  }

  AwesomeNotificationsService._internal();

  // init function only called when app is started
  Future<void> init() async {
    await _getNotificationPermissions();
    _initLocalNotifications();
  }

  // check and get notification permission
  Future<void> _getNotificationPermissions() async {
    await AwesomeNotifications()
        .isNotificationAllowed()
        .then((isAllowed) async {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications(
          permissions: [
            NotificationPermission.Alert,
            NotificationPermission.Sound,
            NotificationPermission.Badge,
            NotificationPermission.Vibration,
          ],
          channelKey: ConstantsResource.ALARM_NOTIFICATION_CHANNEL_KEY,
        );
      }
    });
  }

  // register notification plugin with essential android and ios setting
  void _initLocalNotifications() async {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: ConstantsResource.ALARM_NOTIFICATION_CHANNEL_KEY,
          channelName: ConstantsResource.ALARM_NOTIFICATION_CHANNEL_NAME,
          channelDescription:
              ConstantsResource.ALARM_NOTIFICATION_CHANNEL_DESCRIPTION,
          importance: NotificationImportance.Default,
          channelShowBadge: true,
          defaultColor: ColorsResource.PRIMARY_CLR,
          enableVibration: true,
          playSound: true,
          criticalAlerts: true,
          soundSource: ConstantsResource.ALARM_CUSTOM_AUDIO_URL,
        ),
      ],
      debug: true,
    );
  }

  // shows notification, trigger each time when you want to show notification
  Future<void> showNotifications({required AlarmModel alarm}) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: alarm.id,
        channelKey: ConstantsResource.ALARM_NOTIFICATION_CHANNEL_KEY,
        title: StringsResource.ALARM_NOTIFICATION_TITLE_STR,
        body: StringsResource.ALARM_NOTIFICATION_BODY_STR,
        locked: true,
        criticalAlert: true,
        wakeUpScreen: true,
        autoDismissible: true,
      ),
      schedule: NotificationCalendar(
        year: alarm.date.year,
        month: alarm.date.month,
        day: alarm.date.day,
        hour: alarm.time.hour,
        minute: alarm.time.minute,
        second: 0,
        millisecond: 0,
        allowWhileIdle: true,
        preciseAlarm: true,
        repeats: false,
      ),
    );
  }

  Future<void> cancelNotification({required int id}) async {
    await AwesomeNotifications().cancel(id);
  }
}
