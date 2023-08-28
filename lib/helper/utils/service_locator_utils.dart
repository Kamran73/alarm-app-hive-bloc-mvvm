import 'package:task_10/business_logic/bloc/main_screen_bloc/main_screen_bloc.dart';
import 'package:task_10/repositories/alarm_repository.dart';
import 'package:task_10/repositories/local_alarm_repo_impl.dart';

import '../../business_logic/cubit/notifications_cubit/notifications_cubit.dart';
import '../../main.dart';
import '../services/local_notifications_service/awesome_notification_services.dart';

class ServiceLocator {
  ServiceLocator._();

  static void registerDependencyContainer() {
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
}
