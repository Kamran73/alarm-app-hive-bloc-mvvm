import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:task_10/data_provider/models/alarm_model/alarm_model.dart';
import 'package:task_10/data_provider/models/failure/failure.dart';
import 'package:task_10/repositories/alarm_repository.dart';

class LocalAlarmRepoImpl implements AlarmStorageRepository<AlarmModel> {
  final Box hiveAlarmBox;

  LocalAlarmRepoImpl({required this.hiveAlarmBox});

  @override
  Future<Either<Failure, void>> addData({required AlarmModel data}) async {
    try {
      await hiveAlarmBox.add(data);
      return const Right<Failure, void>(null);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteData({required int index}) async {
    try {
      await hiveAlarmBox.deleteAt(index);
      return const Right<Failure, void>(null);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }

  @override
  Stream<Either<Failure, List<AlarmModel>>> listenToDataChanges() {
    return hiveAlarmBox.watch().map((event) {
      try {
        return right(hiveAlarmBox.values.map((hiveDataModelItem) {
          final result = hiveDataModelItem as AlarmModel;
          return result;
        }).toList());
      } catch (exception) {
        return left(Failure(errorMessage: exception.toString()));
      }
    });
  }

  @override
  Future<Either<Failure, void>> updateData(
      {required int index, required AlarmModel newObject}) async {
    try {
      await hiveAlarmBox.putAt(index, newObject);
      return const Right<Failure, void>(null);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AlarmModel>>> getData() async {
    try {
      if (hiveAlarmBox.values.isNotEmpty) {
        return right(hiveAlarmBox.values.map((hiveDataModelItem) {
          final result = hiveDataModelItem as AlarmModel;
          return result;
        }).toList());
      } else {
        return right(<AlarmModel>[]);
      }
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteExpired(
      List<int> expiredAlarmsIndex) async {
    try {
      if (expiredAlarmsIndex.isNotEmpty) {
        for (var index in expiredAlarmsIndex) {
          await deleteData(index: index);
        }
      }
      return const Right<Failure, void>(null);
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }
}
