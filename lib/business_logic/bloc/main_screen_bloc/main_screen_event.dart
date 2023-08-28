part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.saveAlarmToDB({required AlarmModel alarm}) =
      _SaveAlarmToDB;

  const factory MainScreenEvent.getAlarmFromDB() = _GetAlarmsFromDB;

  const factory MainScreenEvent.listenToChanges() = _ListenToChanges;

  const factory MainScreenEvent.updateAlarm(
      {required int index,
      required AlarmModel alarm,
      bool? isToggled}) = _UpdateAlarm;

  const factory MainScreenEvent.deleteAlarm(
      {required int index, required int id}) = _DeleteAlarm;
}
