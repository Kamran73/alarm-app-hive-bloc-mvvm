import 'package:task_10/repositories/alarm_repository.dart';
import 'package:task_10/repositories/local_alarm_repo_impl.dart';

import '../../main.dart';

class ServiceLocator {
  ServiceLocator._();

  static void registerDependencyContainer() {
    getIt.registerLazySingleton<AlarmRepository>(
        () => LocalAlarmRepoImpl(hiveAlarmBox: getIt()));
  }
}
