import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_10/business_logic/bloc/main_screen_bloc/main_screen_bloc.dart';
import 'package:task_10/repositories/alarm_repository.dart';
import 'package:task_10/repositories/local_alarm_repo_impl.dart';

import '../../business_logic/cubit/notifications_cubit/notifications_cubit.dart';
import '../../data_provider/models/alarm_model/alarm_model.dart';
import '../../data_provider/models/alarm_model/time_of_day_adapter.dart';
import '../../main.dart';
import '../constants/constants_resource.dart';
import '../services/local_notifications_service/awesome_notification_services.dart';

class ServiceLocator {
  ServiceLocator._();

  static Future<void> registerDependencyContainer() async {
    await hiveInit();
    getIt.registerLazySingleton<AlarmStorageRepository>(
        () => LocalAlarmRepoImpl(hiveAlarmBox: getIt()));

    getIt.registerLazySingleton<AwesomeNotificationsService>(
        () => AwesomeNotificationsService());

    // registering bloc and cubits
    getIt.registerFactory<NotificationsCubit>(
      () => NotificationsCubit(
        notificationsService: getIt(),
      ),
    );
    getIt.registerFactory<MainScreenBloc>(() => MainScreenBloc(
        alarmStorageRepository: getIt(), notificationsCubit: getIt()));
  }

  static Future hiveInit() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AlarmModelAdapter());
    Hive.registerAdapter(TimeOfDayAdapter());
    final box = await Hive.openBox(ConstantsResource.HIVE_ALARM_BOX_NAME);
    getIt.registerLazySingleton<Box>(() => box);
  }
}
