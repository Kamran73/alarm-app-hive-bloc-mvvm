// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel alarm) saveAlarmToDB,
    required TResult Function() getAlarmFromDB,
    required TResult Function() listenToChanges,
    required TResult Function(int index, AlarmModel alarm, bool? isToggled)
        updateAlarm,
    required TResult Function(int index, int id) deleteAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel alarm)? saveAlarmToDB,
    TResult? Function()? getAlarmFromDB,
    TResult? Function()? listenToChanges,
    TResult? Function(int index, AlarmModel alarm, bool? isToggled)?
        updateAlarm,
    TResult? Function(int index, int id)? deleteAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel alarm)? saveAlarmToDB,
    TResult Function()? getAlarmFromDB,
    TResult Function()? listenToChanges,
    TResult Function(int index, AlarmModel alarm, bool? isToggled)? updateAlarm,
    TResult Function(int index, int id)? deleteAlarm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAlarmToDB value) saveAlarmToDB,
    required TResult Function(_GetAlarmsFromDB value) getAlarmFromDB,
    required TResult Function(_ListenToChanges value) listenToChanges,
    required TResult Function(_UpdateAlarm value) updateAlarm,
    required TResult Function(_DeleteAlarm value) deleteAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult? Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult? Function(_ListenToChanges value)? listenToChanges,
    TResult? Function(_UpdateAlarm value)? updateAlarm,
    TResult? Function(_DeleteAlarm value)? deleteAlarm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult Function(_ListenToChanges value)? listenToChanges,
    TResult Function(_UpdateAlarm value)? updateAlarm,
    TResult Function(_DeleteAlarm value)? deleteAlarm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res, MainScreenEvent>;
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res, $Val extends MainScreenEvent>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveAlarmToDBCopyWith<$Res> {
  factory _$$_SaveAlarmToDBCopyWith(
          _$_SaveAlarmToDB value, $Res Function(_$_SaveAlarmToDB) then) =
      __$$_SaveAlarmToDBCopyWithImpl<$Res>;
  @useResult
  $Res call({AlarmModel alarm});
}

/// @nodoc
class __$$_SaveAlarmToDBCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$_SaveAlarmToDB>
    implements _$$_SaveAlarmToDBCopyWith<$Res> {
  __$$_SaveAlarmToDBCopyWithImpl(
      _$_SaveAlarmToDB _value, $Res Function(_$_SaveAlarmToDB) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarm = null,
  }) {
    return _then(_$_SaveAlarmToDB(
      alarm: null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as AlarmModel,
    ));
  }
}

/// @nodoc

class _$_SaveAlarmToDB implements _SaveAlarmToDB {
  const _$_SaveAlarmToDB({required this.alarm});

  @override
  final AlarmModel alarm;

  @override
  String toString() {
    return 'MainScreenEvent.saveAlarmToDB(alarm: $alarm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveAlarmToDB &&
            (identical(other.alarm, alarm) || other.alarm == alarm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alarm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveAlarmToDBCopyWith<_$_SaveAlarmToDB> get copyWith =>
      __$$_SaveAlarmToDBCopyWithImpl<_$_SaveAlarmToDB>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel alarm) saveAlarmToDB,
    required TResult Function() getAlarmFromDB,
    required TResult Function() listenToChanges,
    required TResult Function(int index, AlarmModel alarm, bool? isToggled)
        updateAlarm,
    required TResult Function(int index, int id) deleteAlarm,
  }) {
    return saveAlarmToDB(alarm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel alarm)? saveAlarmToDB,
    TResult? Function()? getAlarmFromDB,
    TResult? Function()? listenToChanges,
    TResult? Function(int index, AlarmModel alarm, bool? isToggled)?
        updateAlarm,
    TResult? Function(int index, int id)? deleteAlarm,
  }) {
    return saveAlarmToDB?.call(alarm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel alarm)? saveAlarmToDB,
    TResult Function()? getAlarmFromDB,
    TResult Function()? listenToChanges,
    TResult Function(int index, AlarmModel alarm, bool? isToggled)? updateAlarm,
    TResult Function(int index, int id)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (saveAlarmToDB != null) {
      return saveAlarmToDB(alarm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAlarmToDB value) saveAlarmToDB,
    required TResult Function(_GetAlarmsFromDB value) getAlarmFromDB,
    required TResult Function(_ListenToChanges value) listenToChanges,
    required TResult Function(_UpdateAlarm value) updateAlarm,
    required TResult Function(_DeleteAlarm value) deleteAlarm,
  }) {
    return saveAlarmToDB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult? Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult? Function(_ListenToChanges value)? listenToChanges,
    TResult? Function(_UpdateAlarm value)? updateAlarm,
    TResult? Function(_DeleteAlarm value)? deleteAlarm,
  }) {
    return saveAlarmToDB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult Function(_ListenToChanges value)? listenToChanges,
    TResult Function(_UpdateAlarm value)? updateAlarm,
    TResult Function(_DeleteAlarm value)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (saveAlarmToDB != null) {
      return saveAlarmToDB(this);
    }
    return orElse();
  }
}

abstract class _SaveAlarmToDB implements MainScreenEvent {
  const factory _SaveAlarmToDB({required final AlarmModel alarm}) =
      _$_SaveAlarmToDB;

  AlarmModel get alarm;
  @JsonKey(ignore: true)
  _$$_SaveAlarmToDBCopyWith<_$_SaveAlarmToDB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAlarmsFromDBCopyWith<$Res> {
  factory _$$_GetAlarmsFromDBCopyWith(
          _$_GetAlarmsFromDB value, $Res Function(_$_GetAlarmsFromDB) then) =
      __$$_GetAlarmsFromDBCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAlarmsFromDBCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$_GetAlarmsFromDB>
    implements _$$_GetAlarmsFromDBCopyWith<$Res> {
  __$$_GetAlarmsFromDBCopyWithImpl(
      _$_GetAlarmsFromDB _value, $Res Function(_$_GetAlarmsFromDB) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAlarmsFromDB implements _GetAlarmsFromDB {
  const _$_GetAlarmsFromDB();

  @override
  String toString() {
    return 'MainScreenEvent.getAlarmFromDB()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAlarmsFromDB);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel alarm) saveAlarmToDB,
    required TResult Function() getAlarmFromDB,
    required TResult Function() listenToChanges,
    required TResult Function(int index, AlarmModel alarm, bool? isToggled)
        updateAlarm,
    required TResult Function(int index, int id) deleteAlarm,
  }) {
    return getAlarmFromDB();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel alarm)? saveAlarmToDB,
    TResult? Function()? getAlarmFromDB,
    TResult? Function()? listenToChanges,
    TResult? Function(int index, AlarmModel alarm, bool? isToggled)?
        updateAlarm,
    TResult? Function(int index, int id)? deleteAlarm,
  }) {
    return getAlarmFromDB?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel alarm)? saveAlarmToDB,
    TResult Function()? getAlarmFromDB,
    TResult Function()? listenToChanges,
    TResult Function(int index, AlarmModel alarm, bool? isToggled)? updateAlarm,
    TResult Function(int index, int id)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (getAlarmFromDB != null) {
      return getAlarmFromDB();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAlarmToDB value) saveAlarmToDB,
    required TResult Function(_GetAlarmsFromDB value) getAlarmFromDB,
    required TResult Function(_ListenToChanges value) listenToChanges,
    required TResult Function(_UpdateAlarm value) updateAlarm,
    required TResult Function(_DeleteAlarm value) deleteAlarm,
  }) {
    return getAlarmFromDB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult? Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult? Function(_ListenToChanges value)? listenToChanges,
    TResult? Function(_UpdateAlarm value)? updateAlarm,
    TResult? Function(_DeleteAlarm value)? deleteAlarm,
  }) {
    return getAlarmFromDB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult Function(_ListenToChanges value)? listenToChanges,
    TResult Function(_UpdateAlarm value)? updateAlarm,
    TResult Function(_DeleteAlarm value)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (getAlarmFromDB != null) {
      return getAlarmFromDB(this);
    }
    return orElse();
  }
}

abstract class _GetAlarmsFromDB implements MainScreenEvent {
  const factory _GetAlarmsFromDB() = _$_GetAlarmsFromDB;
}

/// @nodoc
abstract class _$$_ListenToChangesCopyWith<$Res> {
  factory _$$_ListenToChangesCopyWith(
          _$_ListenToChanges value, $Res Function(_$_ListenToChanges) then) =
      __$$_ListenToChangesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListenToChangesCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$_ListenToChanges>
    implements _$$_ListenToChangesCopyWith<$Res> {
  __$$_ListenToChangesCopyWithImpl(
      _$_ListenToChanges _value, $Res Function(_$_ListenToChanges) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ListenToChanges implements _ListenToChanges {
  const _$_ListenToChanges();

  @override
  String toString() {
    return 'MainScreenEvent.listenToChanges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListenToChanges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel alarm) saveAlarmToDB,
    required TResult Function() getAlarmFromDB,
    required TResult Function() listenToChanges,
    required TResult Function(int index, AlarmModel alarm, bool? isToggled)
        updateAlarm,
    required TResult Function(int index, int id) deleteAlarm,
  }) {
    return listenToChanges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel alarm)? saveAlarmToDB,
    TResult? Function()? getAlarmFromDB,
    TResult? Function()? listenToChanges,
    TResult? Function(int index, AlarmModel alarm, bool? isToggled)?
        updateAlarm,
    TResult? Function(int index, int id)? deleteAlarm,
  }) {
    return listenToChanges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel alarm)? saveAlarmToDB,
    TResult Function()? getAlarmFromDB,
    TResult Function()? listenToChanges,
    TResult Function(int index, AlarmModel alarm, bool? isToggled)? updateAlarm,
    TResult Function(int index, int id)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (listenToChanges != null) {
      return listenToChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAlarmToDB value) saveAlarmToDB,
    required TResult Function(_GetAlarmsFromDB value) getAlarmFromDB,
    required TResult Function(_ListenToChanges value) listenToChanges,
    required TResult Function(_UpdateAlarm value) updateAlarm,
    required TResult Function(_DeleteAlarm value) deleteAlarm,
  }) {
    return listenToChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult? Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult? Function(_ListenToChanges value)? listenToChanges,
    TResult? Function(_UpdateAlarm value)? updateAlarm,
    TResult? Function(_DeleteAlarm value)? deleteAlarm,
  }) {
    return listenToChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult Function(_ListenToChanges value)? listenToChanges,
    TResult Function(_UpdateAlarm value)? updateAlarm,
    TResult Function(_DeleteAlarm value)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (listenToChanges != null) {
      return listenToChanges(this);
    }
    return orElse();
  }
}

abstract class _ListenToChanges implements MainScreenEvent {
  const factory _ListenToChanges() = _$_ListenToChanges;
}

/// @nodoc
abstract class _$$_UpdateAlarmCopyWith<$Res> {
  factory _$$_UpdateAlarmCopyWith(
          _$_UpdateAlarm value, $Res Function(_$_UpdateAlarm) then) =
      __$$_UpdateAlarmCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, AlarmModel alarm, bool? isToggled});
}

/// @nodoc
class __$$_UpdateAlarmCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$_UpdateAlarm>
    implements _$$_UpdateAlarmCopyWith<$Res> {
  __$$_UpdateAlarmCopyWithImpl(
      _$_UpdateAlarm _value, $Res Function(_$_UpdateAlarm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? alarm = null,
    Object? isToggled = freezed,
  }) {
    return _then(_$_UpdateAlarm(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      alarm: null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as AlarmModel,
      isToggled: freezed == isToggled
          ? _value.isToggled
          : isToggled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UpdateAlarm implements _UpdateAlarm {
  const _$_UpdateAlarm(
      {required this.index, required this.alarm, this.isToggled});

  @override
  final int index;
  @override
  final AlarmModel alarm;
  @override
  final bool? isToggled;

  @override
  String toString() {
    return 'MainScreenEvent.updateAlarm(index: $index, alarm: $alarm, isToggled: $isToggled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAlarm &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.alarm, alarm) || other.alarm == alarm) &&
            (identical(other.isToggled, isToggled) ||
                other.isToggled == isToggled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, alarm, isToggled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAlarmCopyWith<_$_UpdateAlarm> get copyWith =>
      __$$_UpdateAlarmCopyWithImpl<_$_UpdateAlarm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel alarm) saveAlarmToDB,
    required TResult Function() getAlarmFromDB,
    required TResult Function() listenToChanges,
    required TResult Function(int index, AlarmModel alarm, bool? isToggled)
        updateAlarm,
    required TResult Function(int index, int id) deleteAlarm,
  }) {
    return updateAlarm(index, alarm, isToggled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel alarm)? saveAlarmToDB,
    TResult? Function()? getAlarmFromDB,
    TResult? Function()? listenToChanges,
    TResult? Function(int index, AlarmModel alarm, bool? isToggled)?
        updateAlarm,
    TResult? Function(int index, int id)? deleteAlarm,
  }) {
    return updateAlarm?.call(index, alarm, isToggled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel alarm)? saveAlarmToDB,
    TResult Function()? getAlarmFromDB,
    TResult Function()? listenToChanges,
    TResult Function(int index, AlarmModel alarm, bool? isToggled)? updateAlarm,
    TResult Function(int index, int id)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (updateAlarm != null) {
      return updateAlarm(index, alarm, isToggled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAlarmToDB value) saveAlarmToDB,
    required TResult Function(_GetAlarmsFromDB value) getAlarmFromDB,
    required TResult Function(_ListenToChanges value) listenToChanges,
    required TResult Function(_UpdateAlarm value) updateAlarm,
    required TResult Function(_DeleteAlarm value) deleteAlarm,
  }) {
    return updateAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult? Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult? Function(_ListenToChanges value)? listenToChanges,
    TResult? Function(_UpdateAlarm value)? updateAlarm,
    TResult? Function(_DeleteAlarm value)? deleteAlarm,
  }) {
    return updateAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult Function(_ListenToChanges value)? listenToChanges,
    TResult Function(_UpdateAlarm value)? updateAlarm,
    TResult Function(_DeleteAlarm value)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (updateAlarm != null) {
      return updateAlarm(this);
    }
    return orElse();
  }
}

abstract class _UpdateAlarm implements MainScreenEvent {
  const factory _UpdateAlarm(
      {required final int index,
      required final AlarmModel alarm,
      final bool? isToggled}) = _$_UpdateAlarm;

  int get index;
  AlarmModel get alarm;
  bool? get isToggled;
  @JsonKey(ignore: true)
  _$$_UpdateAlarmCopyWith<_$_UpdateAlarm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteAlarmCopyWith<$Res> {
  factory _$$_DeleteAlarmCopyWith(
          _$_DeleteAlarm value, $Res Function(_$_DeleteAlarm) then) =
      __$$_DeleteAlarmCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int id});
}

/// @nodoc
class __$$_DeleteAlarmCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$_DeleteAlarm>
    implements _$$_DeleteAlarmCopyWith<$Res> {
  __$$_DeleteAlarmCopyWithImpl(
      _$_DeleteAlarm _value, $Res Function(_$_DeleteAlarm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? id = null,
  }) {
    return _then(_$_DeleteAlarm(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteAlarm implements _DeleteAlarm {
  const _$_DeleteAlarm({required this.index, required this.id});

  @override
  final int index;
  @override
  final int id;

  @override
  String toString() {
    return 'MainScreenEvent.deleteAlarm(index: $index, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAlarm &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAlarmCopyWith<_$_DeleteAlarm> get copyWith =>
      __$$_DeleteAlarmCopyWithImpl<_$_DeleteAlarm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel alarm) saveAlarmToDB,
    required TResult Function() getAlarmFromDB,
    required TResult Function() listenToChanges,
    required TResult Function(int index, AlarmModel alarm, bool? isToggled)
        updateAlarm,
    required TResult Function(int index, int id) deleteAlarm,
  }) {
    return deleteAlarm(index, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel alarm)? saveAlarmToDB,
    TResult? Function()? getAlarmFromDB,
    TResult? Function()? listenToChanges,
    TResult? Function(int index, AlarmModel alarm, bool? isToggled)?
        updateAlarm,
    TResult? Function(int index, int id)? deleteAlarm,
  }) {
    return deleteAlarm?.call(index, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel alarm)? saveAlarmToDB,
    TResult Function()? getAlarmFromDB,
    TResult Function()? listenToChanges,
    TResult Function(int index, AlarmModel alarm, bool? isToggled)? updateAlarm,
    TResult Function(int index, int id)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (deleteAlarm != null) {
      return deleteAlarm(index, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveAlarmToDB value) saveAlarmToDB,
    required TResult Function(_GetAlarmsFromDB value) getAlarmFromDB,
    required TResult Function(_ListenToChanges value) listenToChanges,
    required TResult Function(_UpdateAlarm value) updateAlarm,
    required TResult Function(_DeleteAlarm value) deleteAlarm,
  }) {
    return deleteAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult? Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult? Function(_ListenToChanges value)? listenToChanges,
    TResult? Function(_UpdateAlarm value)? updateAlarm,
    TResult? Function(_DeleteAlarm value)? deleteAlarm,
  }) {
    return deleteAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveAlarmToDB value)? saveAlarmToDB,
    TResult Function(_GetAlarmsFromDB value)? getAlarmFromDB,
    TResult Function(_ListenToChanges value)? listenToChanges,
    TResult Function(_UpdateAlarm value)? updateAlarm,
    TResult Function(_DeleteAlarm value)? deleteAlarm,
    required TResult orElse(),
  }) {
    if (deleteAlarm != null) {
      return deleteAlarm(this);
    }
    return orElse();
  }
}

abstract class _DeleteAlarm implements MainScreenEvent {
  const factory _DeleteAlarm(
      {required final int index, required final int id}) = _$_DeleteAlarm;

  int get index;
  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteAlarmCopyWith<_$_DeleteAlarm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AlarmModel> alarmList) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AlarmModel> alarmList)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AlarmModel> alarmList)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ErrorMessage value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ErrorMessage value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_ErrorMessage value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MainScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AlarmModel> alarmList) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AlarmModel> alarmList)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AlarmModel> alarmList)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ErrorMessage value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ErrorMessage value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_ErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MainScreenState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AlarmModel> alarmList});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmList = null,
  }) {
    return _then(_$_Loaded(
      null == alarmList
          ? _value._alarmList
          : alarmList // ignore: cast_nullable_to_non_nullable
              as List<AlarmModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<AlarmModel> alarmList) : _alarmList = alarmList;

  final List<AlarmModel> _alarmList;
  @override
  List<AlarmModel> get alarmList {
    if (_alarmList is EqualUnmodifiableListView) return _alarmList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alarmList);
  }

  @override
  String toString() {
    return 'MainScreenState.loaded(alarmList: $alarmList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._alarmList, _alarmList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_alarmList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AlarmModel> alarmList) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(alarmList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AlarmModel> alarmList)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(alarmList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AlarmModel> alarmList)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(alarmList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ErrorMessage value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ErrorMessage value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_ErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MainScreenState {
  const factory _Loaded(final List<AlarmModel> alarmList) = _$_Loaded;

  List<AlarmModel> get alarmList;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'MainScreenState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AlarmModel> alarmList) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AlarmModel> alarmList)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AlarmModel> alarmList)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ErrorMessage value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ErrorMessage value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_ErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements MainScreenState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_ErrorMessageCopyWith<$Res> {
  factory _$$_ErrorMessageCopyWith(
          _$_ErrorMessage value, $Res Function(_$_ErrorMessage) then) =
      __$$_ErrorMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorMessageCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$_ErrorMessage>
    implements _$$_ErrorMessageCopyWith<$Res> {
  __$$_ErrorMessageCopyWithImpl(
      _$_ErrorMessage _value, $Res Function(_$_ErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_ErrorMessage(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorMessage implements _ErrorMessage {
  const _$_ErrorMessage(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MainScreenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorMessage &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorMessageCopyWith<_$_ErrorMessage> get copyWith =>
      __$$_ErrorMessageCopyWithImpl<_$_ErrorMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AlarmModel> alarmList) loaded,
    required TResult Function() empty,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AlarmModel> alarmList)? loaded,
    TResult? Function()? empty,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AlarmModel> alarmList)? loaded,
    TResult Function()? empty,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_ErrorMessage value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_ErrorMessage value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_ErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessage implements MainScreenState {
  const factory _ErrorMessage(final String errorMessage) = _$_ErrorMessage;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorMessageCopyWith<_$_ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
