import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_10/business_logic/bloc/main_screen_bloc/main_screen_bloc.dart';
import 'package:task_10/helper/constants/colors_resource.dart';
import 'package:task_10/helper/constants/dimensions_resource.dart';
import 'package:task_10/helper/constants/strings_resource.dart';
import 'package:task_10/helper/extensions/context_extensions.dart';
import 'package:task_10/helper/extensions/time_of_day_extension.dart';
import 'package:task_10/helper/utils/dialog_utils.dart';
import 'package:task_10/presentation/widgets/custom_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsResource.MAIN_SCREEN_BG_CLR,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () async => await _selectDate(context),
          backgroundColor: ColorsResource.ADD_BTN_CLR,
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: DimensionsResource.PIXEL_10),
          child: BlocBuilder<MainScreenBloc, MainScreenState>(
              builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (alarmList) => ListView.builder(
                  itemBuilder: (context, index) {
                    return AlarmContainer(
                      time: alarmList[index].time,
                      date: alarmList[index].date,
                    );
                  },
                  itemCount: alarmList.length),
              empty: () => const Center(
                child: Text('empty'),
              ),
              error: (errorMessage) => Center(
                child: Text(errorMessage),
              ),
            );
          }),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final date = await DialogUtils.datePickerDialog(context: context);
    await date.fold((failure) => null, (date) async {
      if (date != null) {
        await _selectTime(context, date);
      }
    });
  }

  Future<void> _selectTime(BuildContext context, DateTime date) async {
    final time = await DialogUtils.timePickerDialog(context: context);
    time.fold((failure) => null, (time) async {
      if (time != null) {
        if (time.toDouble >=
            ((TimeOfDay.now() + const TimeOfDay(hour: 0, minute: 10))
                .toDouble)) {
          context
              .read<MainScreenBloc>()
              .add(MainScreenEvent.saveAlarmToDB(time: time, date: date));
        } else {
          context.showTextSnackBar(
              content: StringsResource.MIMINUM_TIME_SELECTION_STR);
          await _selectTime(context, date);
        }
      }
      // if (time != null) {
      //   final timeNow = TimeOfDay.now();
      //   if (timeNow.minute + 10 >= 60) {
      //     final remainingMinutes = 60 - timeNow.minute;
      //     final newTime =
      //         TimeOfDay(hour: timeNow.hour + 1, minute: 10 - remainingMinutes);
      //     if (time.toDouble >= newTime.toDouble) {
      //       /// to do add alarm
      //       context
      //           .read<MainScreenBloc>()
      //           .add(MainScreenEvent.saveAlarmToDB(time: time, date: date));
      //     } else {
      //       await _selectTime(context, date);
      //     }
      //   } else {
      //     final newTime =
      //         TimeOfDay(hour: timeNow.hour, minute: timeNow.minute + 10);
      //     if (time.toDouble >= newTime.toDouble) {
      //       /// to do add alarm
      //       context
      //           .read<MainScreenBloc>()
      //           .add(MainScreenEvent.saveAlarmToDB(time: time, date: date));
      //     } else {
      //       await _selectTime(context, date);
      //     }
      //   }
      // }
    });
  }
}

class AlarmContainer extends StatefulWidget {
  final TimeOfDay time;
  final DateTime date;

  const AlarmContainer({
    super.key,
    required this.time,
    required this.date,
  });

  @override
  State<AlarmContainer> createState() => _AlarmContainerState();
}

class _AlarmContainerState extends State<AlarmContainer> {
  late final int _hours;
  late final int _minutes;
  late final String _period;

  @override
  void initState() {
    super.initState();
    _extractTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: DimensionsResource.ALARM_CONTAINER_MARGIN,
      padding: DimensionsResource.ALARM_CONTAINER_PADDING,
      decoration: BoxDecoration(
        color: ColorsResource.ALARM_TILE_BG_CLR,
        borderRadius: BorderRadius.circular(DimensionsResource.PIXEL_10),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.sunny,
          size: DimensionsResource.ALARM_CONTAINER_LEADING_ICON_SIZE,
          color: Colors.amberAccent,
        ),
        title: CustomText(
          text: '$_hours:${_minutes >= 10 ? _minutes : '0$_minutes'} $_period',
          textStyle: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: ColorsResource.WHITE_CLR),
        ),
        titleAlignment: ListTileTitleAlignment.center,
      ),
    );
  }

  void _extractTime() {
    if (widget.time.hour > 12) {
      _hours = widget.time.hour - 12;
    } else {
      _hours = widget.time.hour;
    }
    _minutes = widget.time.minute;
    if (widget.time.period == DayPeriod.am) {
      _period = 'am';
    } else {
      _period = 'pm';
    }
  }
}
