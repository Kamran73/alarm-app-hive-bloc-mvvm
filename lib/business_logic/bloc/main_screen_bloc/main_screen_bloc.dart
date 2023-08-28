import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_10/helper/constants/constants_resource.dart';

import '../../../data_provider/models/alarm_model/alarm_model.dart';
import '../../../data_provider/models/failure/failure.dart';
import '../../../repositories/alarm_repository.dart';
import '../../cubit/notifications_cubit/notifications_cubit.dart';

part 'main_screen_bloc.freezed.dart';
part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final AlarmStorageRepository alarmStorageRepository;
  final NotificationsCubit notificationsCubit;
  List<AlarmModel> updatedAlarmsList = [];

  MainScreenBloc({
    required this.alarmStorageRepository,
    required this.notificationsCubit,
  }) : super(const MainScreenState.loading()) {
    on<MainScreenEvent>((event, emit) async {
      await event.when(
        saveAlarmToDB: (alarm) async => await _saveAlarmToDB(emit, alarm),
        getAlarmFromDB: () async => await _getDataFromDB(emit),
        updateAlarm: (index, alarm, isToggled) async =>
            _updateAlarm(index, emit, alarm, isToggled),
        deleteAlarm: (index, id) async => await _deleteAlarm(index, emit, id),
        listenToChanges: () async => _listenToDataChanges(emit),
      );
    });
  }

  Future<void> _saveAlarmToDB(Emitter emit, AlarmModel alarm) async {
    final result = await alarmStorageRepository.addData(
        data: AlarmModel(
            time: alarm.time,
            date: alarm.date,
            isActive: alarm.isActive,
            id: alarm.id));
    await _foldData(result, emit,
        onSuccess: () async =>
            await notificationsCubit.addNotificationForAlarm(alarm));
  }

  Future<void> _deleteAlarm(int index, Emitter emit, int id) async {
    emit(const MainScreenState.loading());
    await Future.delayed(ConstantsResource.LOADING_STATE_DURATION);
    final result = await alarmStorageRepository.deleteData(index: index);
    await _foldData(result, emit,
        onSuccess: () async => await notificationsCubit.cancelNotification(id));
  }

  Future<void> _updateAlarm(
      int index, Emitter emit, AlarmModel alarm, bool? isToggled) async {
    if (isToggled == null) {
      emit(const MainScreenState.loading());
      await Future.delayed(ConstantsResource.LOADING_STATE_DURATION);
    }
    // updating data in Storage
    final result =
        await alarmStorageRepository.updateData(index: index, newObject: alarm);
    await _foldData(result, emit, onSuccess: () async {
      // setting up notification
      if (alarm.isActive) {
        await notificationsCubit.addNotificationForAlarm(alarm);
      } else if (!alarm.isActive) {
        await notificationsCubit.cancelNotification(alarm.id);
      }
    });
  }

  Future<void> _listenToDataChanges(Emitter emit) async {
    await emit.forEach(
      alarmStorageRepository.listenToDataChanges(),
      onData: (data) {
        return data.fold((failure) {
          return MainScreenState.error(failure.errorMessage);
        }, (success) {
          success as List<AlarmModel>;
          updatedAlarmsList = [];
          updatedAlarmsList = success;
          if (success.isEmpty) {
            return const MainScreenState.empty();
          } else {
            return MainScreenState.loaded(success);
          }
        });
      },
    );
  }

  Future<void> _getDataFromDB(Emitter emit) async {
    final result = await alarmStorageRepository.getData();
    result.fold((failure) => emit(MainScreenState.error(failure.errorMessage)),
        (alarmList) {
      alarmList as List<AlarmModel>;
      if (alarmList.isEmpty) {
        emit(const MainScreenState.empty());
      } else {
        updatedAlarmsList = [];
        updatedAlarmsList = alarmList;
        emit(MainScreenState.loaded(alarmList));
      }
    });
  }

  Future<void> _foldData(Either<Failure, void> result, Emitter emit,
      {required VoidCallback onSuccess}) async {
    await result.fold(
        (failure) async => emit(MainScreenState.error(failure.errorMessage)),
        (success) async => onSuccess());
  }
}
