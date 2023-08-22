part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.loading() = _Loading;

  const factory MainScreenState.loaded(List<AlarmModel> alarmList) = _Loaded;

  const factory MainScreenState.empty() = _Empty;

  const factory MainScreenState.error(String errorMessage) = _ErrorMessage;
}
