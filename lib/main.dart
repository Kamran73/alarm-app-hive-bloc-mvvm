import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:task_10/business_logic/bloc/main_screen_bloc/main_screen_bloc.dart';
import 'package:task_10/business_logic/cubit/notifications_cubit/notifications_cubit.dart';
import 'package:task_10/presentation/screens/main_screen/main_screen.dart';

import 'helper/services/local_notifications_service/awesome_notification_services.dart';
import 'helper/theme/app_theme.dart';
import 'helper/utils/service_locator_utils.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  await appInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NotificationsCubit>(
          create: (context) => getIt(),
        ),
        BlocProvider<MainScreenBloc>(
          create: (context) => getIt()
            ..add(const MainScreenEvent.getAlarmFromDB())
            ..add(const MainScreenEvent.listenToChanges()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Alarm',
        theme: AppTheme.themeData,
        home: const MainScreen(),
      ),
    );
  }
}

Future<void> appInit() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final notificationService = AwesomeNotificationsService();
  await notificationService.init();
  await ServiceLocator.registerDependencyContainer();
}
