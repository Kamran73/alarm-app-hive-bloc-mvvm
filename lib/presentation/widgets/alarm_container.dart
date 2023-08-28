import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_10/helper/extensions/date_time_extension.dart';
import 'package:task_10/helper/extensions/time_of_day_extension.dart';

import '../../helper/constants/colors_resource.dart';
import '../../helper/constants/dimensions_resource.dart';
import 'custom_text.dart';

class AlarmContainer extends StatefulWidget {
  final TimeOfDay time;
  final DateTime date;
  final VoidCallback onLongPressed;
  final bool isActive;
  final void Function(bool)? onSwitchToggled;

  const AlarmContainer({
    super.key,
    required this.time,
    required this.date,
    required this.onLongPressed,
    required this.isActive,
    required this.onSwitchToggled,
  });

  @override
  State<AlarmContainer> createState() => _AlarmContainerState();
}

class _AlarmContainerState extends State<AlarmContainer> {
  late final int _hours;
  late final int _minutes;
  late final String _period;
  late final Icon _icon;
  late final String _day;

  @override
  void initState() {
    _extractTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: DimensionsResource.ALARM_CONTAINER_MARGIN,
      padding: DimensionsResource.ALARM_CONTAINER_PADDING,
      decoration: BoxDecoration(
        color: _isExpired()
            ? ColorsResource.ALARM_TILE_DISABLED_BG_CLR
            : ColorsResource.ALARM_TILE_ACTIVE_BG_CLR,
        borderRadius: BorderRadius.circular(DimensionsResource.PIXEL_10),
      ),
      child: ListTile(
        // we only provide edit or delete functionality to which if alarm is expired or alarm is not activated
        onLongPress:
            _isExpired() || !widget.isActive ? widget.onLongPressed : null,
        leading: _icon,
        title: CustomText(
          text: '$_hours:${_minutes >= 10 ? _minutes : '0$_minutes'} $_period',
          textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: ColorsResource.WHITE_CLR,
              decoration: _isExpired() ? TextDecoration.lineThrough : null),
        ),
        subtitle: CustomText(
          text: _day,
          color: ColorsResource.BLACK_CLR,
          decoration: _isExpired() ? TextDecoration.lineThrough : null,
        ),
        titleAlignment: ListTileTitleAlignment.center,
        trailing: CupertinoSwitch(
          value: _isExpired() ? false : widget.isActive,
          onChanged: _isExpired() ? (value) {} : widget.onSwitchToggled,
        ),
      ),
    );
  }

  bool _isExpired() {
    return widget.date.isBeforeCheck(DateTime.now())
        ? true
        : widget.date.isEqualTo(DateTime.now())
            ? widget.time <= TimeOfDay.now()
                ? true
                : false
            : false;
  }

  void _extractTime() {
    // conditions for selecting icon of day or night
    if (widget.time.hour >= 6 && widget.time.hour < 18) {
      _icon = const Icon(
        Icons.sunny,
        size: DimensionsResource.ALARM_CONTAINER_LEADING_ICON_SIZE,
        color: ColorsResource.DAY_ICON_CLR,
      );
    } else {
      _icon = const Icon(
        Icons.dark_mode_rounded,
        size: DimensionsResource.ALARM_CONTAINER_LEADING_ICON_SIZE,
        color: ColorsResource.NIGHT_ICON_CLR,
      );
    }
    // conditions for changing 24 hour format to 12 hour format
    if (widget.time.hour > 12) {
      _hours = widget.time.hour - 12;
    } else if (widget.time.period == DayPeriod.am && widget.time.hour == 0) {
      _hours = 12;
    } else {
      _hours = widget.time.hour;
    }
    _minutes = widget.time.minute;
    // conditions for extracting period
    if (widget.time.period == DayPeriod.am) {
      _period = 'am';
    } else {
      _period = 'pm';
    }
    // extracting day
    _day = _getWeekdayName(widget.date.weekday);
  }

  String _getWeekdayName(int weekday) {
    switch (weekday) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return 'Invalid Weekday';
    }
  }
}
