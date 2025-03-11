// Mocks generated by Mockito 5.4.5 from annotations
// in wger/test/workout/routine_form_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i13;
import 'dart:ui' as _i16;

import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i15;
import 'package:wger/models/workouts/base_config.dart' as _i9;
import 'package:wger/models/workouts/day.dart' as _i6;
import 'package:wger/models/workouts/day_data.dart' as _i14;
import 'package:wger/models/workouts/log.dart' as _i11;
import 'package:wger/models/workouts/repetition_unit.dart' as _i4;
import 'package:wger/models/workouts/routine.dart' as _i5;
import 'package:wger/models/workouts/session.dart' as _i10;
import 'package:wger/models/workouts/slot.dart' as _i7;
import 'package:wger/models/workouts/slot_entry.dart' as _i8;
import 'package:wger/models/workouts/weight_unit.dart' as _i3;
import 'package:wger/providers/base_provider.dart' as _i2;
import 'package:wger/providers/routines.dart' as _i12;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeWgerBaseProvider_0 extends _i1.SmartFake implements _i2.WgerBaseProvider {
  _FakeWgerBaseProvider_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeWeightUnit_1 extends _i1.SmartFake implements _i3.WeightUnit {
  _FakeWeightUnit_1(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeRepetitionUnit_2 extends _i1.SmartFake implements _i4.RepetitionUnit {
  _FakeRepetitionUnit_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeRoutine_3 extends _i1.SmartFake implements _i5.Routine {
  _FakeRoutine_3(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeDay_4 extends _i1.SmartFake implements _i6.Day {
  _FakeDay_4(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeSlot_5 extends _i1.SmartFake implements _i7.Slot {
  _FakeSlot_5(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeSlotEntry_6 extends _i1.SmartFake implements _i8.SlotEntry {
  _FakeSlotEntry_6(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeBaseConfig_7 extends _i1.SmartFake implements _i9.BaseConfig {
  _FakeBaseConfig_7(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeWorkoutSession_8 extends _i1.SmartFake implements _i10.WorkoutSession {
  _FakeWorkoutSession_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLog_9 extends _i1.SmartFake implements _i11.Log {
  _FakeLog_9(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

/// A class which mocks [RoutinesProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockRoutinesProvider extends _i1.Mock implements _i12.RoutinesProvider {
  MockRoutinesProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.WgerBaseProvider get baseProvider => (super.noSuchMethod(
        Invocation.getter(#baseProvider),
        returnValue: _FakeWgerBaseProvider_0(
          this,
          Invocation.getter(#baseProvider),
        ),
      ) as _i2.WgerBaseProvider);

  @override
  List<_i5.Routine> get items => (super.noSuchMethod(
        Invocation.getter(#items),
        returnValue: <_i5.Routine>[],
      ) as List<_i5.Routine>);

  @override
  List<_i3.WeightUnit> get weightUnits => (super.noSuchMethod(
        Invocation.getter(#weightUnits),
        returnValue: <_i3.WeightUnit>[],
      ) as List<_i3.WeightUnit>);

  @override
  set weightUnits(List<_i3.WeightUnit>? weightUnits) => super.noSuchMethod(
        Invocation.setter(#weightUnits, weightUnits),
        returnValueForMissingStub: null,
      );

  @override
  _i3.WeightUnit get defaultWeightUnit => (super.noSuchMethod(
        Invocation.getter(#defaultWeightUnit),
        returnValue: _FakeWeightUnit_1(
          this,
          Invocation.getter(#defaultWeightUnit),
        ),
      ) as _i3.WeightUnit);

  @override
  List<_i4.RepetitionUnit> get repetitionUnits => (super.noSuchMethod(
        Invocation.getter(#repetitionUnits),
        returnValue: <_i4.RepetitionUnit>[],
      ) as List<_i4.RepetitionUnit>);

  @override
  set repetitionUnits(List<_i4.RepetitionUnit>? repetitionUnits) => super.noSuchMethod(
        Invocation.setter(#repetitionUnits, repetitionUnits),
        returnValueForMissingStub: null,
      );

  @override
  _i4.RepetitionUnit get defaultRepetitionUnit => (super.noSuchMethod(
        Invocation.getter(#defaultRepetitionUnit),
        returnValue: _FakeRepetitionUnit_2(
          this,
          Invocation.getter(#defaultRepetitionUnit),
        ),
      ) as _i4.RepetitionUnit);

  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false) as bool);

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(#clear, []),
        returnValueForMissingStub: null,
      );

  @override
  _i3.WeightUnit findWeightUnitById(int? id) => (super.noSuchMethod(
        Invocation.method(#findWeightUnitById, [id]),
        returnValue: _FakeWeightUnit_1(
          this,
          Invocation.method(#findWeightUnitById, [id]),
        ),
      ) as _i3.WeightUnit);

  @override
  _i4.RepetitionUnit findRepetitionUnitById(int? id) => (super.noSuchMethod(
        Invocation.method(#findRepetitionUnitById, [id]),
        returnValue: _FakeRepetitionUnit_2(
          this,
          Invocation.method(#findRepetitionUnitById, [id]),
        ),
      ) as _i4.RepetitionUnit);

  @override
  List<_i5.Routine> getPlans() => (super.noSuchMethod(
        Invocation.method(#getPlans, []),
        returnValue: <_i5.Routine>[],
      ) as List<_i5.Routine>);

  @override
  _i5.Routine findById(int? id) => (super.noSuchMethod(
        Invocation.method(#findById, [id]),
        returnValue: _FakeRoutine_3(
          this,
          Invocation.method(#findById, [id]),
        ),
      ) as _i5.Routine);

  @override
  int findIndexById(int? id) => (super.noSuchMethod(
        Invocation.method(#findIndexById, [id]),
        returnValue: 0,
      ) as int);

  @override
  void setCurrentPlan(int? id) => super.noSuchMethod(
        Invocation.method(#setCurrentPlan, [id]),
        returnValueForMissingStub: null,
      );

  @override
  void resetCurrentRoutine() => super.noSuchMethod(
        Invocation.method(#resetCurrentRoutine, []),
        returnValueForMissingStub: null,
      );

  @override
  _i13.Future<void> fetchAndSetAllRoutinesFull() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetAllRoutinesFull, []),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> fetchAndSetAllPlansSparse() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetAllPlansSparse, []),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  void setExercisesAndUnits(List<_i14.DayData>? entries) => super.noSuchMethod(
        Invocation.method(#setExercisesAndUnits, [entries]),
        returnValueForMissingStub: null,
      );

  @override
  _i13.Future<_i5.Routine> fetchAndSetRoutineSparse(int? planId) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetRoutineSparse, [planId]),
        returnValue: _i13.Future<_i5.Routine>.value(
          _FakeRoutine_3(
            this,
            Invocation.method(#fetchAndSetRoutineSparse, [planId]),
          ),
        ),
      ) as _i13.Future<_i5.Routine>);

  @override
  _i13.Future<_i5.Routine> fetchAndSetRoutineFull(int? routineId) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetRoutineFull, [routineId]),
        returnValue: _i13.Future<_i5.Routine>.value(
          _FakeRoutine_3(
            this,
            Invocation.method(#fetchAndSetRoutineFull, [routineId]),
          ),
        ),
      ) as _i13.Future<_i5.Routine>);

  @override
  _i13.Future<_i5.Routine> addRoutine(_i5.Routine? routine) => (super.noSuchMethod(
        Invocation.method(#addRoutine, [routine]),
        returnValue: _i13.Future<_i5.Routine>.value(
          _FakeRoutine_3(this, Invocation.method(#addRoutine, [routine])),
        ),
      ) as _i13.Future<_i5.Routine>);

  @override
  _i13.Future<void> editRoutine(_i5.Routine? routine) => (super.noSuchMethod(
        Invocation.method(#editRoutine, [routine]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> deleteRoutine(int? id) => (super.noSuchMethod(
        Invocation.method(#deleteRoutine, [id]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> fetchAndSetRepetitionUnits() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetRepetitionUnits, []),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> fetchAndSetWeightUnits() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetWeightUnits, []),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> fetchAndSetUnits() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetUnits, []),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<_i6.Day> addDay(_i6.Day? day, {dynamic refresh = false}) => (super.noSuchMethod(
        Invocation.method(#addDay, [day], {#refresh: refresh}),
        returnValue: _i13.Future<_i6.Day>.value(
          _FakeDay_4(
            this,
            Invocation.method(#addDay, [day], {#refresh: refresh}),
          ),
        ),
      ) as _i13.Future<_i6.Day>);

  @override
  _i13.Future<void> editDay(_i6.Day? day, {dynamic refresh = false}) => (super.noSuchMethod(
        Invocation.method(#editDay, [day], {#refresh: refresh}),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> editDays(List<_i6.Day>? days, {dynamic refresh = false}) => (super.noSuchMethod(
        Invocation.method(#editDays, [days], {#refresh: refresh}),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> deleteDay(int? dayId) => (super.noSuchMethod(
        Invocation.method(#deleteDay, [dayId]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<_i7.Slot> addSlot(_i7.Slot? slot) => (super.noSuchMethod(
        Invocation.method(#addSlot, [slot]),
        returnValue: _i13.Future<_i7.Slot>.value(
          _FakeSlot_5(this, Invocation.method(#addSlot, [slot])),
        ),
      ) as _i13.Future<_i7.Slot>);

  @override
  _i13.Future<void> deleteSlot(int? slotId) => (super.noSuchMethod(
        Invocation.method(#deleteSlot, [slotId]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> editSlot(_i7.Slot? slot) => (super.noSuchMethod(
        Invocation.method(#editSlot, [slot]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> editSlots(List<_i7.Slot>? slots) => (super.noSuchMethod(
        Invocation.method(#editSlots, [slots]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<_i8.SlotEntry> addSlotEntry(_i8.SlotEntry? entry) => (super.noSuchMethod(
        Invocation.method(#addSlotEntry, [entry]),
        returnValue: _i13.Future<_i8.SlotEntry>.value(
          _FakeSlotEntry_6(this, Invocation.method(#addSlotEntry, [entry])),
        ),
      ) as _i13.Future<_i8.SlotEntry>);

  @override
  _i13.Future<void> deleteSlotEntry(int? id) => (super.noSuchMethod(
        Invocation.method(#deleteSlotEntry, [id]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> editSlotEntry(_i8.SlotEntry? entry) => (super.noSuchMethod(
        Invocation.method(#editSlotEntry, [entry]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  String getConfigUrl(_i8.ConfigType? type) => (super.noSuchMethod(
        Invocation.method(#getConfigUrl, [type]),
        returnValue: _i15.dummyValue<String>(
          this,
          Invocation.method(#getConfigUrl, [type]),
        ),
      ) as String);

  @override
  _i13.Future<_i9.BaseConfig> editConfig(
    _i9.BaseConfig? config,
    _i8.ConfigType? type,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#editConfig, [config, type]),
        returnValue: _i13.Future<_i9.BaseConfig>.value(
          _FakeBaseConfig_7(
            this,
            Invocation.method(#editConfig, [config, type]),
          ),
        ),
      ) as _i13.Future<_i9.BaseConfig>);

  @override
  _i13.Future<_i9.BaseConfig> addConfig(
    _i9.BaseConfig? config,
    _i8.ConfigType? type,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#addConfig, [config, type]),
        returnValue: _i13.Future<_i9.BaseConfig>.value(
          _FakeBaseConfig_7(
            this,
            Invocation.method(#addConfig, [config, type]),
          ),
        ),
      ) as _i13.Future<_i9.BaseConfig>);

  @override
  _i13.Future<void> deleteConfig(int? id, _i8.ConfigType? type) => (super.noSuchMethod(
        Invocation.method(#deleteConfig, [id, type]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<void> handleConfig(
    _i8.SlotEntry? entry,
    String? input,
    _i8.ConfigType? type,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#handleConfig, [entry, input, type]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  _i13.Future<List<_i10.WorkoutSession>> fetchSessionData() => (super.noSuchMethod(
        Invocation.method(#fetchSessionData, []),
        returnValue: _i13.Future<List<_i10.WorkoutSession>>.value(
          <_i10.WorkoutSession>[],
        ),
      ) as _i13.Future<List<_i10.WorkoutSession>>);

  @override
  _i13.Future<_i10.WorkoutSession> addSession(
    _i10.WorkoutSession? session,
    int? routineId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#addSession, [session, routineId]),
        returnValue: _i13.Future<_i10.WorkoutSession>.value(
          _FakeWorkoutSession_8(
            this,
            Invocation.method(#addSession, [session, routineId]),
          ),
        ),
      ) as _i13.Future<_i10.WorkoutSession>);

  @override
  _i13.Future<_i10.WorkoutSession> editSession(_i10.WorkoutSession? session) => (super.noSuchMethod(
        Invocation.method(#editSession, [session]),
        returnValue: _i13.Future<_i10.WorkoutSession>.value(
          _FakeWorkoutSession_8(
            this,
            Invocation.method(#editSession, [session]),
          ),
        ),
      ) as _i13.Future<_i10.WorkoutSession>);

  @override
  _i13.Future<_i11.Log> addLog(_i11.Log? log) => (super.noSuchMethod(
        Invocation.method(#addLog, [log]),
        returnValue: _i13.Future<_i11.Log>.value(
          _FakeLog_9(this, Invocation.method(#addLog, [log])),
        ),
      ) as _i13.Future<_i11.Log>);

  @override
  _i13.Future<void> deleteLog(_i11.Log? log) => (super.noSuchMethod(
        Invocation.method(#deleteLog, [log]),
        returnValue: _i13.Future<void>.value(),
        returnValueForMissingStub: _i13.Future<void>.value(),
      ) as _i13.Future<void>);

  @override
  void addListener(_i16.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(#addListener, [listener]),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i16.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(#removeListener, [listener]),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(#dispose, []),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(#notifyListeners, []),
        returnValueForMissingStub: null,
      );
}
