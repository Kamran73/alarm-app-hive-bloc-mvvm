part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.saveAlarmToDB(
      {required final TimeOfDay time,
      required final DateTime date}) = _SaveAlarmToDB;

  const factory MainScreenEvent.getAlarmFromDB() = _GetAlarmsFromDB;

  const factory MainScreenEvent.listenToChanges() = _ListenToChanges;

  const factory MainScreenEvent.updateAlarm(
      {required int index,
      required final TimeOfDay time,
      required final DateTime date}) = _UpdateAlarm;

  const factory MainScreenEvent.deleteAlarm({required int index}) =
      _DeleteAlarm;
}
