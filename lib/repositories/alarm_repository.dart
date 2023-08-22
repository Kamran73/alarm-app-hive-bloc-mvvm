import 'package:dartz/dartz.dart';
import 'package:task_10/data_provider/models/alarm_model/alarm_model.dart';

import '../data_provider/models/failure/failure.dart';

abstract class AlarmRepository<T> {
  Future<Either<Failure, void>> addData({required T data});

  Future<Either<Failure, void>> deleteData({required int index});

  Future<Either<Failure, List<T>>> getData();

  Stream<Either<Failure, List<T>>> listenToDataChanges();

  Future<Either<Failure, void>> updateData(
      {required int index, required AlarmModel newObject});
}
