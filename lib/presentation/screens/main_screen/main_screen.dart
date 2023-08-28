import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:task_10/business_logic/bloc/main_screen_bloc/main_screen_bloc.dart';
import 'package:task_10/data_provider/models/alarm_model/alarm_model.dart';
import 'package:task_10/helper/constants/colors_resource.dart';
import 'package:task_10/helper/constants/constants_resource.dart';
import 'package:task_10/helper/constants/dimensions_resource.dart';
import 'package:task_10/helper/constants/images_resource.dart';
import 'package:task_10/helper/constants/strings_resource.dart';
import 'package:task_10/helper/extensions/context_extensions.dart';
import 'package:task_10/helper/extensions/date_time_extension.dart';
import 'package:task_10/helper/extensions/time_of_day_extension.dart';
import 'package:task_10/helper/utils/dialog_utils.dart';
import 'package:task_10/presentation/widgets/loading_state_widget.dart';

import '../../widgets/alarm_container.dart';
import '../../widgets/empty_state_widget.dart';
import '../../widgets/error_state_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final MainScreenBloc _mainScreenBloc;

  @override
  void initState() {
    FlutterNativeSplash.remove();
    _mainScreenBloc = context.read<MainScreenBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsResource.PRIMARY_CLR,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () async => await _onFloatingActionButtonTapped(context),
          backgroundColor: ColorsResource.ADD_BTN_CLR,
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: context.responsiveHeight(DimensionsResource.PIXEL_10)),
          child: BlocBuilder<MainScreenBloc, MainScreenState>(
              builder: (context, state) {
            return state.when(
              loading: () => const LoadingStateWidget(),
              loaded: _alarmListLoaded,
              empty: () => const EmptyStateWidget(
                  assetUrl: ImagesResource.EMPTY_PAGE_SVG),
              error: (errorMessage) =>
                  ErrorStateWidget(errorMessage: errorMessage),
            );
          }),
        ),
      ),
    );
  }

  // alarm list loaded widget to show all alarms
  Widget _alarmListLoaded(List<AlarmModel> alarmList) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              AlarmContainer(
                isActive: alarmList[index].isActive,
                onSwitchToggled: (value) {
                  final AlarmModel updatedAlarm = AlarmModel(
                      time: alarmList[index].time,
                      date: alarmList[index].date,
                      isActive: value,
                      id: alarmList[index].id);
                  _mainScreenBloc.add(MainScreenEvent.updateAlarm(
                    index: index,
                    alarm: updatedAlarm,
                    // is toggled only checks if alarm update is about activating or deactivating alarm
                    // we passed true because we are activating/deactivating alarm without changing time/date
                    isToggled: true,
                  ));
                },
                time: alarmList[index].time,
                date: alarmList[index].date,
                onDeletePressed: () {
                  _mainScreenBloc.add(MainScreenEvent.deleteAlarm(
                      index: index, id: alarmList[index].id));
                },
                onEditPressed: () async {
                  final newDate = await _selectDate(context,
                      previousAlarmDate: alarmList[index].date);
                  if (newDate != null) {
                    if (context.mounted) {
                      final newTime = await _selectTime(context, newDate,
                          previousAlarmTime: alarmList[index].time);
                      if (newTime != null) {
                        _mainScreenBloc.add(
                          MainScreenEvent.updateAlarm(
                            index: index,
                            alarm: AlarmModel(
                              id: alarmList[index].id,
                              isActive: false,
                              time: newTime,
                              date: newDate,
                            ),
                          ),
                        );
                      }
                    }
                  }
                },
              ),
              if (index == alarmList.length - 1)
                SizedBox(
                  height: context.responsiveHeight(50),
                ),
            ],
          );
        },
        itemCount: alarmList.length);
  }

  void _onEditPressed(int index) {}

  // floating action button onPressed
  // adds alarm
  Future<void> _onFloatingActionButtonTapped(BuildContext context) async {
    final selectedDate = await _selectDate(context);

    if (selectedDate != null && context.mounted) {
      final time = await _selectTime(context, selectedDate);

      if (time != null) {
        final int alarmId = DateTime.now().millisecondsSinceEpoch & 0xFFFFFFFF;
        final AlarmModel alarm = AlarmModel(
            time: time, date: selectedDate, isActive: true, id: alarmId);
        _mainScreenBloc.add(MainScreenEvent.saveAlarmToDB(alarm: alarm));
      }
    }
  }

  // show date picker dialog
  Future<DateTime?> _selectDate(BuildContext context,
      {DateTime? previousAlarmDate}) async {
    final date = await DialogUtils.datePickerDialog(
        context: context, previousAlarmDate: previousAlarmDate);
    return await date.fold((failure) {
      return null;
    }, (newDate) async => newDate);
  }

  // shows time picker dialog and check conditions for time
  Future<TimeOfDay?> _selectTime(
      BuildContext context, DateTime datePickedByUser,
      {TimeOfDay? previousAlarmTime}) async {
    late final TimeOfDay initialTimeToShowUser;
    final dateNow = DateTime.now();

    /// below if condition check which time should be shown to user
    /// when firstly time picker dialog is opened
    /// if date picked is the same as today then 10 minutes will be
    /// added otherwise TimeOfDay.now() is shown
    if (datePickedByUser.checkNotEqualityForOnlyYearMonthDay(dateNow)) {
      initialTimeToShowUser = TimeOfDay.now();
    } else {
      initialTimeToShowUser = TimeOfDay.now() +
          ConstantsResource.MINIMUM_TIME_ADDED_FROM_CURRENT_TIME;

      /// previous alarm time is only shown when user is editing any alarm
      /// then previous alarm time passed to time picker as initial time to show
      if (previousAlarmTime != null && previousAlarmTime <= TimeOfDay.now()) {
        previousAlarmTime = TimeOfDay.now() +
            ConstantsResource.MINIMUM_TIME_ADDED_FROM_CURRENT_TIME;
      }
    }

    final time = await DialogUtils.timePickerDialog(
        context: context,
        previousAlarmTime: previousAlarmTime ?? initialTimeToShowUser);
    return await time.fold((failure) => null, (newPickedTime) async {
      if (newPickedTime != null) {
        if (datePickedByUser.checkNotEqualityForOnlyYearMonthDay(dateNow) ||
            newPickedTime.toDouble >=
                ((TimeOfDay.now() +
                        ConstantsResource.MINIMUM_TIME_ADDED_FROM_CURRENT_TIME)
                    .toDouble)) {
          return newPickedTime;
        } else {
          context.showTextSnackBar(
              content: StringsResource.MIMINUM_TIME_SELECTION_STR);
          return null;
        }
      } else {
        return null;
      }
    });
  }
}
