import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_10/data_provider/models/alarm_model/alarm_model.dart';
import 'package:task_10/helper/services/local_notifications_service/awesome_notification_services.dart';
import 'package:task_10/helper/utils/service_locator_utils.dart';

import '../../data_provider/models/alarm_model/time_of_day_adapter.dart';
import '../../main.dart';
import '../constants/constants_resource.dart';

class AppInitUtils {
  AppInitUtils._();

  static Future<void> appInit() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    final notificationService = AwesomeNotificationsService();
    await notificationService.init();

    await hiveInit();
    ServiceLocator.registerDependencyContainer();
  }

  static Future hiveInit() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AlarmModelAdapter());
    Hive.registerAdapter(TimeOfDayAdapter());
    final box = await Hive.openBox(ConstantsResource.HIVE_ALARM_BOX_NAME);
    getIt.registerLazySingleton<Box>(() => box);
  }
}
