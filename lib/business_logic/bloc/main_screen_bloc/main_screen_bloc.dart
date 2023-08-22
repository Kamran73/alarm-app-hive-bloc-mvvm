import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data_provider/models/alarm_model/alarm_model.dart';
import '../../../data_provider/models/failure/failure.dart';
import '../../../repositories/alarm_repository.dart';

part 'main_screen_bloc.freezed.dart';

part 'main_screen_event.dart';

part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final AlarmRepository alarmRepository;
  List<AlarmModel> originalList = [];

  MainScreenBloc({required this.alarmRepository})
      : super(const MainScreenState.loading()) {
    on<MainScreenEvent>((event, emit) async {
      await event.when(
        saveAlarmToDB: (time, date) async =>
            await _saveAlarmToDB(time, date, emit),
        getAlarmFromDB: () async => await _getDataFromDB(emit),
        updateAlarm: (index, time, date) async =>
            await _updateAlarm(index, time, date, emit),
        deleteAlarm: (index) async => await _deleteAlarm(index, emit),
        listenToChanges: () async => await _listenToDataChanges(emit),
      );
    });
  }

  Future<void> _saveAlarmToDB(
      TimeOfDay time, DateTime date, Emitter emit) async {
    final result =
        await alarmRepository.addData(data: AlarmModel(time: time, date: date));
    foldData(result, emit);
  }

  Future<void> _deleteAlarm(int index, Emitter emit) async {
    final result = await alarmRepository.deleteData(index: index);
    foldData(result, emit);
  }

  Future<void> _updateAlarm(
      int index, TimeOfDay time, DateTime date, Emitter emit) async {
    final result = await alarmRepository.updateData(
        index: index, newObject: AlarmModel(time: time, date: date));
    foldData(result, emit);
  }

  Future<void> _listenToDataChanges(Emitter emit) async {
    await emit.forEach(
      alarmRepository.listenToDataChanges(),
      onData: (data) {
        emit(const MainScreenState.loading());
        return data.fold((failure) {
          return MainScreenState.error(failure.errorMessage);
        }, (success) {
          success as List<AlarmModel>;
          originalList = success;
          final modifiedList = success;
          if (success.isEmpty) {
            return const MainScreenState.empty();
          } else {
            return MainScreenState.loaded(modifiedList);
          }
        });
      },
    );
  }

  Future<void> _getDataFromDB(Emitter emit) async {
    final result = await alarmRepository.getData();
    result.fold((failure) => emit(MainScreenState.error(failure.errorMessage)),
        (alarmList) {
      alarmList as List<AlarmModel>;
      if (alarmList.isEmpty) {
        emit(const MainScreenState.empty());
      } else {
        emit(MainScreenState.loaded(alarmList));
      }
    });
  }

  void foldData(Either<Failure, void> result, Emitter emit) {
    result.fold((failure) => emit(MainScreenState.error(failure.errorMessage)),
        (success) {
      // nothing to do here
    });
  }
}
