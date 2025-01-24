// Mocks generated by Mockito 5.4.5 from annotations
// in wger/test/core/settings_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i18;
import 'dart:ui' as _i19;

import 'package:flutter/material.dart' as _i23;
import 'package:http/http.dart' as _i16;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i14;
import 'package:wger/database/exercises/exercise_database.dart' as _i3;
import 'package:wger/database/ingredients/ingredients_database.dart' as _i9;
import 'package:wger/models/exercises/category.dart' as _i5;
import 'package:wger/models/exercises/equipment.dart' as _i6;
import 'package:wger/models/exercises/exercise.dart' as _i4;
import 'package:wger/models/exercises/ingredient_api.dart' as _i21;
import 'package:wger/models/exercises/language.dart' as _i8;
import 'package:wger/models/exercises/muscle.dart' as _i7;
import 'package:wger/models/nutrition/ingredient.dart' as _i13;
import 'package:wger/models/nutrition/meal.dart' as _i11;
import 'package:wger/models/nutrition/meal_item.dart' as _i12;
import 'package:wger/models/nutrition/nutritional_plan.dart' as _i10;
import 'package:wger/models/user/profile.dart' as _i24;
import 'package:wger/providers/auth.dart' as _i15;
import 'package:wger/providers/base_provider.dart' as _i2;
import 'package:wger/providers/exercises.dart' as _i17;
import 'package:wger/providers/nutrition.dart' as _i20;
import 'package:wger/providers/user.dart' as _i22;

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

class _FakeExerciseDatabase_1 extends _i1.SmartFake implements _i3.ExerciseDatabase {
  _FakeExerciseDatabase_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeExercise_2 extends _i1.SmartFake implements _i4.Exercise {
  _FakeExercise_2(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeExerciseCategory_3 extends _i1.SmartFake implements _i5.ExerciseCategory {
  _FakeExerciseCategory_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeEquipment_4 extends _i1.SmartFake implements _i6.Equipment {
  _FakeEquipment_4(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeMuscle_5 extends _i1.SmartFake implements _i7.Muscle {
  _FakeMuscle_5(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeLanguage_6 extends _i1.SmartFake implements _i8.Language {
  _FakeLanguage_6(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeIngredientDatabase_7 extends _i1.SmartFake implements _i9.IngredientDatabase {
  _FakeIngredientDatabase_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeNutritionalPlan_8 extends _i1.SmartFake implements _i10.NutritionalPlan {
  _FakeNutritionalPlan_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeMeal_9 extends _i1.SmartFake implements _i11.Meal {
  _FakeMeal_9(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeMealItem_10 extends _i1.SmartFake implements _i12.MealItem {
  _FakeMealItem_10(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeIngredient_11 extends _i1.SmartFake implements _i13.Ingredient {
  _FakeIngredient_11(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeSharedPreferencesAsync_12 extends _i1.SmartFake implements _i14.SharedPreferencesAsync {
  _FakeSharedPreferencesAsync_12(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeAuthProvider_13 extends _i1.SmartFake implements _i15.AuthProvider {
  _FakeAuthProvider_13(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeClient_14 extends _i1.SmartFake implements _i16.Client {
  _FakeClient_14(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeUri_15 extends _i1.SmartFake implements Uri {
  _FakeUri_15(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

class _FakeResponse_16 extends _i1.SmartFake implements _i16.Response {
  _FakeResponse_16(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

/// A class which mocks [ExercisesProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockExercisesProvider extends _i1.Mock implements _i17.ExercisesProvider {
  MockExercisesProvider() {
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
  _i3.ExerciseDatabase get database => (super.noSuchMethod(
        Invocation.getter(#database),
        returnValue: _FakeExerciseDatabase_1(
          this,
          Invocation.getter(#database),
        ),
      ) as _i3.ExerciseDatabase);

  @override
  set database(_i3.ExerciseDatabase? _database) => super.noSuchMethod(
        Invocation.setter(#database, _database),
        returnValueForMissingStub: null,
      );

  @override
  List<_i4.Exercise> get exercises => (super.noSuchMethod(
        Invocation.getter(#exercises),
        returnValue: <_i4.Exercise>[],
      ) as List<_i4.Exercise>);

  @override
  set exercises(List<_i4.Exercise>? _exercises) => super.noSuchMethod(
        Invocation.setter(#exercises, _exercises),
        returnValueForMissingStub: null,
      );

  @override
  List<_i4.Exercise> get filteredExercises => (super.noSuchMethod(
        Invocation.getter(#filteredExercises),
        returnValue: <_i4.Exercise>[],
      ) as List<_i4.Exercise>);

  @override
  set filteredExercises(List<_i4.Exercise>? newFilteredExercises) => super.noSuchMethod(
        Invocation.setter(#filteredExercises, newFilteredExercises),
        returnValueForMissingStub: null,
      );

  @override
  Map<int, List<_i4.Exercise>> get exerciseBasesByVariation => (super.noSuchMethod(
        Invocation.getter(#exerciseBasesByVariation),
        returnValue: <int, List<_i4.Exercise>>{},
      ) as Map<int, List<_i4.Exercise>>);

  @override
  List<_i5.ExerciseCategory> get categories => (super.noSuchMethod(
        Invocation.getter(#categories),
        returnValue: <_i5.ExerciseCategory>[],
      ) as List<_i5.ExerciseCategory>);

  @override
  List<_i7.Muscle> get muscles => (super.noSuchMethod(
        Invocation.getter(#muscles),
        returnValue: <_i7.Muscle>[],
      ) as List<_i7.Muscle>);

  @override
  List<_i6.Equipment> get equipment => (super.noSuchMethod(
        Invocation.getter(#equipment),
        returnValue: <_i6.Equipment>[],
      ) as List<_i6.Equipment>);

  @override
  List<_i8.Language> get languages => (super.noSuchMethod(
        Invocation.getter(#languages),
        returnValue: <_i8.Language>[],
      ) as List<_i8.Language>);

  @override
  set languages(List<_i8.Language>? languages) => super.noSuchMethod(
        Invocation.setter(#languages, languages),
        returnValueForMissingStub: null,
      );

  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false) as bool);

  @override
  _i18.Future<void> setFilters(_i17.Filters? newFilters) => (super.noSuchMethod(
        Invocation.method(#setFilters, [newFilters]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  void initFilters() => super.noSuchMethod(
        Invocation.method(#initFilters, []),
        returnValueForMissingStub: null,
      );

  @override
  _i18.Future<void> findByFilters() => (super.noSuchMethod(
        Invocation.method(#findByFilters, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(#clear, []),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Exercise findExerciseById(int? id) => (super.noSuchMethod(
        Invocation.method(#findExerciseById, [id]),
        returnValue: _FakeExercise_2(
          this,
          Invocation.method(#findExerciseById, [id]),
        ),
      ) as _i4.Exercise);

  @override
  List<_i4.Exercise> findExercisesByVariationId(
    int? id, {
    int? exerciseBaseIdToExclude,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #findExercisesByVariationId,
          [id],
          {#exerciseBaseIdToExclude: exerciseBaseIdToExclude},
        ),
        returnValue: <_i4.Exercise>[],
      ) as List<_i4.Exercise>);

  @override
  _i5.ExerciseCategory findCategoryById(int? id) => (super.noSuchMethod(
        Invocation.method(#findCategoryById, [id]),
        returnValue: _FakeExerciseCategory_3(
          this,
          Invocation.method(#findCategoryById, [id]),
        ),
      ) as _i5.ExerciseCategory);

  @override
  _i6.Equipment findEquipmentById(int? id) => (super.noSuchMethod(
        Invocation.method(#findEquipmentById, [id]),
        returnValue: _FakeEquipment_4(
          this,
          Invocation.method(#findEquipmentById, [id]),
        ),
      ) as _i6.Equipment);

  @override
  _i7.Muscle findMuscleById(int? id) => (super.noSuchMethod(
        Invocation.method(#findMuscleById, [id]),
        returnValue: _FakeMuscle_5(
          this,
          Invocation.method(#findMuscleById, [id]),
        ),
      ) as _i7.Muscle);

  @override
  _i8.Language findLanguageById(int? id) => (super.noSuchMethod(
        Invocation.method(#findLanguageById, [id]),
        returnValue: _FakeLanguage_6(
          this,
          Invocation.method(#findLanguageById, [id]),
        ),
      ) as _i8.Language);

  @override
  _i18.Future<void> fetchAndSetCategoriesFromApi() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetCategoriesFromApi, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetMusclesFromApi() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetMusclesFromApi, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetEquipmentsFromApi() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetEquipmentsFromApi, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetLanguagesFromApi() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetLanguagesFromApi, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<_i4.Exercise?> fetchAndSetExercise(int? exerciseId) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetExercise, [exerciseId]),
        returnValue: _i18.Future<_i4.Exercise?>.value(),
      ) as _i18.Future<_i4.Exercise?>);

  @override
  _i18.Future<_i4.Exercise> handleUpdateExerciseFromApi(
    _i3.ExerciseDatabase? database,
    int? exerciseId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#handleUpdateExerciseFromApi, [
          database,
          exerciseId,
        ]),
        returnValue: _i18.Future<_i4.Exercise>.value(
          _FakeExercise_2(
            this,
            Invocation.method(#handleUpdateExerciseFromApi, [
              database,
              exerciseId,
            ]),
          ),
        ),
      ) as _i18.Future<_i4.Exercise>);

  @override
  _i18.Future<void> initCacheTimesLocalPrefs({dynamic forceInit = false}) => (super.noSuchMethod(
        Invocation.method(#initCacheTimesLocalPrefs, [], {
          #forceInit: forceInit,
        }),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> clearAllCachesAndPrefs() => (super.noSuchMethod(
        Invocation.method(#clearAllCachesAndPrefs, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetInitialData() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetInitialData, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> setExercisesFromDatabase(
    _i3.ExerciseDatabase? database, {
    bool? forceDeleteCache = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setExercisesFromDatabase,
          [database],
          {#forceDeleteCache: forceDeleteCache},
        ),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetMuscles(_i3.ExerciseDatabase? database) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetMuscles, [database]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetCategories(_i3.ExerciseDatabase? database) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetCategories, [database]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetLanguages(_i3.ExerciseDatabase? database) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetLanguages, [database]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetEquipments(_i3.ExerciseDatabase? database) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetEquipments, [database]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<List<_i4.Exercise>> searchExercise(
    String? name, {
    String? languageCode = 'en',
    bool? searchEnglish = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchExercise,
          [name],
          {#languageCode: languageCode, #searchEnglish: searchEnglish},
        ),
        returnValue: _i18.Future<List<_i4.Exercise>>.value(
          <_i4.Exercise>[],
        ),
      ) as _i18.Future<List<_i4.Exercise>>);

  @override
  void addListener(_i19.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(#addListener, [listener]),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i19.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [NutritionPlansProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockNutritionPlansProvider extends _i1.Mock implements _i20.NutritionPlansProvider {
  MockNutritionPlansProvider() {
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
  _i9.IngredientDatabase get database => (super.noSuchMethod(
        Invocation.getter(#database),
        returnValue: _FakeIngredientDatabase_7(
          this,
          Invocation.getter(#database),
        ),
      ) as _i9.IngredientDatabase);

  @override
  set database(_i9.IngredientDatabase? _database) => super.noSuchMethod(
        Invocation.setter(#database, _database),
        returnValueForMissingStub: null,
      );

  @override
  List<_i13.Ingredient> get ingredients => (super.noSuchMethod(
        Invocation.getter(#ingredients),
        returnValue: <_i13.Ingredient>[],
      ) as List<_i13.Ingredient>);

  @override
  set ingredients(List<_i13.Ingredient>? _ingredients) => super.noSuchMethod(
        Invocation.setter(#ingredients, _ingredients),
        returnValueForMissingStub: null,
      );

  @override
  List<_i10.NutritionalPlan> get items => (super.noSuchMethod(
        Invocation.getter(#items),
        returnValue: <_i10.NutritionalPlan>[],
      ) as List<_i10.NutritionalPlan>);

  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false) as bool);

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(#clear, []),
        returnValueForMissingStub: null,
      );

  @override
  _i10.NutritionalPlan findById(int? id) => (super.noSuchMethod(
        Invocation.method(#findById, [id]),
        returnValue: _FakeNutritionalPlan_8(
          this,
          Invocation.method(#findById, [id]),
        ),
      ) as _i10.NutritionalPlan);

  @override
  _i11.Meal? findMealById(int? id) =>
      (super.noSuchMethod(Invocation.method(#findMealById, [id])) as _i11.Meal?);

  @override
  _i18.Future<void> fetchAndSetAllPlansSparse() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetAllPlansSparse, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetAllPlansFull() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetAllPlansFull, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<_i10.NutritionalPlan> fetchAndSetPlanSparse(int? planId) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetPlanSparse, [planId]),
        returnValue: _i18.Future<_i10.NutritionalPlan>.value(
          _FakeNutritionalPlan_8(
            this,
            Invocation.method(#fetchAndSetPlanSparse, [planId]),
          ),
        ),
      ) as _i18.Future<_i10.NutritionalPlan>);

  @override
  _i18.Future<_i10.NutritionalPlan> fetchAndSetPlanFull(int? planId) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetPlanFull, [planId]),
        returnValue: _i18.Future<_i10.NutritionalPlan>.value(
          _FakeNutritionalPlan_8(
            this,
            Invocation.method(#fetchAndSetPlanFull, [planId]),
          ),
        ),
      ) as _i18.Future<_i10.NutritionalPlan>);

  @override
  _i18.Future<_i10.NutritionalPlan> addPlan(_i10.NutritionalPlan? planData) => (super.noSuchMethod(
        Invocation.method(#addPlan, [planData]),
        returnValue: _i18.Future<_i10.NutritionalPlan>.value(
          _FakeNutritionalPlan_8(
            this,
            Invocation.method(#addPlan, [planData]),
          ),
        ),
      ) as _i18.Future<_i10.NutritionalPlan>);

  @override
  _i18.Future<void> editPlan(_i10.NutritionalPlan? plan) => (super.noSuchMethod(
        Invocation.method(#editPlan, [plan]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> deletePlan(int? id) => (super.noSuchMethod(
        Invocation.method(#deletePlan, [id]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<_i11.Meal> addMeal(_i11.Meal? meal, int? planId) => (super.noSuchMethod(
        Invocation.method(#addMeal, [meal, planId]),
        returnValue: _i18.Future<_i11.Meal>.value(
          _FakeMeal_9(this, Invocation.method(#addMeal, [meal, planId])),
        ),
      ) as _i18.Future<_i11.Meal>);

  @override
  _i18.Future<_i11.Meal> editMeal(_i11.Meal? meal) => (super.noSuchMethod(
        Invocation.method(#editMeal, [meal]),
        returnValue: _i18.Future<_i11.Meal>.value(
          _FakeMeal_9(this, Invocation.method(#editMeal, [meal])),
        ),
      ) as _i18.Future<_i11.Meal>);

  @override
  _i18.Future<void> deleteMeal(_i11.Meal? meal) => (super.noSuchMethod(
        Invocation.method(#deleteMeal, [meal]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<_i12.MealItem> addMealItem(
    _i12.MealItem? mealItem,
    _i11.Meal? meal,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#addMealItem, [mealItem, meal]),
        returnValue: _i18.Future<_i12.MealItem>.value(
          _FakeMealItem_10(
            this,
            Invocation.method(#addMealItem, [mealItem, meal]),
          ),
        ),
      ) as _i18.Future<_i12.MealItem>);

  @override
  _i18.Future<void> deleteMealItem(_i12.MealItem? mealItem) => (super.noSuchMethod(
        Invocation.method(#deleteMealItem, [mealItem]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> clearIngredientCache() => (super.noSuchMethod(
        Invocation.method(#clearIngredientCache, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<_i13.Ingredient> fetchIngredient(
    int? ingredientId, {
    _i9.IngredientDatabase? database,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchIngredient,
          [ingredientId],
          {#database: database},
        ),
        returnValue: _i18.Future<_i13.Ingredient>.value(
          _FakeIngredient_11(
            this,
            Invocation.method(
              #fetchIngredient,
              [ingredientId],
              {#database: database},
            ),
          ),
        ),
      ) as _i18.Future<_i13.Ingredient>);

  @override
  _i18.Future<void> fetchIngredientsFromCache() => (super.noSuchMethod(
        Invocation.method(#fetchIngredientsFromCache, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<List<_i21.IngredientApiSearchEntry>> searchIngredient(
    String? name, {
    String? languageCode = 'en',
    bool? searchEnglish = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchIngredient,
          [name],
          {#languageCode: languageCode, #searchEnglish: searchEnglish},
        ),
        returnValue: _i18.Future<List<_i21.IngredientApiSearchEntry>>.value(
          <_i21.IngredientApiSearchEntry>[],
        ),
      ) as _i18.Future<List<_i21.IngredientApiSearchEntry>>);

  @override
  _i18.Future<_i13.Ingredient?> searchIngredientWithCode(String? code) => (super.noSuchMethod(
        Invocation.method(#searchIngredientWithCode, [code]),
        returnValue: _i18.Future<_i13.Ingredient?>.value(),
      ) as _i18.Future<_i13.Ingredient?>);

  @override
  _i18.Future<void> logMealToDiary(_i11.Meal? meal) => (super.noSuchMethod(
        Invocation.method(#logMealToDiary, [meal]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> logIngredientToDiary(
    _i12.MealItem? mealItem,
    int? planId, [
    DateTime? dateTime,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(#logIngredientToDiary, [
          mealItem,
          planId,
          dateTime,
        ]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> deleteLog(int? logId, int? planId) => (super.noSuchMethod(
        Invocation.method(#deleteLog, [logId, planId]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> fetchAndSetLogs(_i10.NutritionalPlan? plan) => (super.noSuchMethod(
        Invocation.method(#fetchAndSetLogs, [plan]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  void addListener(_i19.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(#addListener, [listener]),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i19.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [UserProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserProvider extends _i1.Mock implements _i22.UserProvider {
  MockUserProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i23.ThemeMode get themeMode => (super.noSuchMethod(
        Invocation.getter(#themeMode),
        returnValue: _i23.ThemeMode.system,
      ) as _i23.ThemeMode);

  @override
  set themeMode(_i23.ThemeMode? _themeMode) => super.noSuchMethod(
        Invocation.setter(#themeMode, _themeMode),
        returnValueForMissingStub: null,
      );

  @override
  _i2.WgerBaseProvider get baseProvider => (super.noSuchMethod(
        Invocation.getter(#baseProvider),
        returnValue: _FakeWgerBaseProvider_0(
          this,
          Invocation.getter(#baseProvider),
        ),
      ) as _i2.WgerBaseProvider);

  @override
  _i14.SharedPreferencesAsync get prefs => (super.noSuchMethod(
        Invocation.getter(#prefs),
        returnValue: _FakeSharedPreferencesAsync_12(
          this,
          Invocation.getter(#prefs),
        ),
      ) as _i14.SharedPreferencesAsync);

  @override
  set prefs(_i14.SharedPreferencesAsync? _prefs) => super.noSuchMethod(
        Invocation.setter(#prefs, _prefs),
        returnValueForMissingStub: null,
      );

  @override
  set profile(_i24.Profile? _profile) => super.noSuchMethod(
        Invocation.setter(#profile, _profile),
        returnValueForMissingStub: null,
      );

  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false) as bool);

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(#clear, []),
        returnValueForMissingStub: null,
      );

  @override
  void setThemeMode(_i23.ThemeMode? mode) => super.noSuchMethod(
        Invocation.method(#setThemeMode, [mode]),
        returnValueForMissingStub: null,
      );

  @override
  _i18.Future<void> fetchAndSetProfile() => (super.noSuchMethod(
        Invocation.method(#fetchAndSetProfile, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> saveProfile() => (super.noSuchMethod(
        Invocation.method(#saveProfile, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> verifyEmail() => (super.noSuchMethod(
        Invocation.method(#verifyEmail, []),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  void addListener(_i19.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(#addListener, [listener]),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i19.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [WgerBaseProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockWgerBaseProvider extends _i1.Mock implements _i2.WgerBaseProvider {
  MockWgerBaseProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i15.AuthProvider get auth => (super.noSuchMethod(
        Invocation.getter(#auth),
        returnValue: _FakeAuthProvider_13(this, Invocation.getter(#auth)),
      ) as _i15.AuthProvider);

  @override
  set auth(_i15.AuthProvider? _auth) => super.noSuchMethod(
        Invocation.setter(#auth, _auth),
        returnValueForMissingStub: null,
      );

  @override
  _i16.Client get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeClient_14(this, Invocation.getter(#client)),
      ) as _i16.Client);

  @override
  set client(_i16.Client? _client) => super.noSuchMethod(
        Invocation.setter(#client, _client),
        returnValueForMissingStub: null,
      );

  @override
  Map<String, String> getDefaultHeaders({bool? includeAuth = false}) => (super.noSuchMethod(
        Invocation.method(#getDefaultHeaders, [], {
          #includeAuth: includeAuth,
        }),
        returnValue: <String, String>{},
      ) as Map<String, String>);

  @override
  Uri makeUrl(
    String? path, {
    int? id,
    String? objectMethod,
    Map<String, dynamic>? query,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #makeUrl,
          [path],
          {#id: id, #objectMethod: objectMethod, #query: query},
        ),
        returnValue: _FakeUri_15(
          this,
          Invocation.method(
            #makeUrl,
            [path],
            {#id: id, #objectMethod: objectMethod, #query: query},
          ),
        ),
      ) as Uri);

  @override
  _i18.Future<dynamic> fetch(Uri? uri) => (super.noSuchMethod(
        Invocation.method(#fetch, [uri]),
        returnValue: _i18.Future<dynamic>.value(),
      ) as _i18.Future<dynamic>);

  @override
  _i18.Future<List<dynamic>> fetchPaginated(Uri? uri) => (super.noSuchMethod(
        Invocation.method(#fetchPaginated, [uri]),
        returnValue: _i18.Future<List<dynamic>>.value(<dynamic>[]),
      ) as _i18.Future<List<dynamic>>);

  @override
  _i18.Future<Map<String, dynamic>> post(
    Map<String, dynamic>? data,
    Uri? uri,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#post, [data, uri]),
        returnValue: _i18.Future<Map<String, dynamic>>.value(
          <String, dynamic>{},
        ),
      ) as _i18.Future<Map<String, dynamic>>);

  @override
  _i18.Future<Map<String, dynamic>> patch(
    Map<String, dynamic>? data,
    Uri? uri,
  ) =>
      (super.noSuchMethod(
        Invocation.method(#patch, [data, uri]),
        returnValue: _i18.Future<Map<String, dynamic>>.value(
          <String, dynamic>{},
        ),
      ) as _i18.Future<Map<String, dynamic>>);

  @override
  _i18.Future<_i16.Response> deleteRequest(String? url, int? id) => (super.noSuchMethod(
        Invocation.method(#deleteRequest, [url, id]),
        returnValue: _i18.Future<_i16.Response>.value(
          _FakeResponse_16(
            this,
            Invocation.method(#deleteRequest, [url, id]),
          ),
        ),
      ) as _i18.Future<_i16.Response>);
}

/// A class which mocks [SharedPreferencesAsync].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockSharedPreferencesAsync extends _i1.Mock implements _i14.SharedPreferencesAsync {
  MockSharedPreferencesAsync() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i18.Future<Set<String>> getKeys({Set<String>? allowList}) => (super.noSuchMethod(
        Invocation.method(#getKeys, [], {#allowList: allowList}),
        returnValue: _i18.Future<Set<String>>.value(<String>{}),
      ) as _i18.Future<Set<String>>);

  @override
  _i18.Future<Map<String, Object?>> getAll({Set<String>? allowList}) => (super.noSuchMethod(
        Invocation.method(#getAll, [], {#allowList: allowList}),
        returnValue: _i18.Future<Map<String, Object?>>.value(
          <String, Object?>{},
        ),
      ) as _i18.Future<Map<String, Object?>>);

  @override
  _i18.Future<bool?> getBool(String? key) => (super.noSuchMethod(
        Invocation.method(#getBool, [key]),
        returnValue: _i18.Future<bool?>.value(),
      ) as _i18.Future<bool?>);

  @override
  _i18.Future<int?> getInt(String? key) => (super.noSuchMethod(
        Invocation.method(#getInt, [key]),
        returnValue: _i18.Future<int?>.value(),
      ) as _i18.Future<int?>);

  @override
  _i18.Future<double?> getDouble(String? key) => (super.noSuchMethod(
        Invocation.method(#getDouble, [key]),
        returnValue: _i18.Future<double?>.value(),
      ) as _i18.Future<double?>);

  @override
  _i18.Future<String?> getString(String? key) => (super.noSuchMethod(
        Invocation.method(#getString, [key]),
        returnValue: _i18.Future<String?>.value(),
      ) as _i18.Future<String?>);

  @override
  _i18.Future<List<String>?> getStringList(String? key) => (super.noSuchMethod(
        Invocation.method(#getStringList, [key]),
        returnValue: _i18.Future<List<String>?>.value(),
      ) as _i18.Future<List<String>?>);

  @override
  _i18.Future<bool> containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(#containsKey, [key]),
        returnValue: _i18.Future<bool>.value(false),
      ) as _i18.Future<bool>);

  @override
  _i18.Future<void> setBool(String? key, bool? value) => (super.noSuchMethod(
        Invocation.method(#setBool, [key, value]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> setInt(String? key, int? value) => (super.noSuchMethod(
        Invocation.method(#setInt, [key, value]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> setDouble(String? key, double? value) => (super.noSuchMethod(
        Invocation.method(#setDouble, [key, value]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> setString(String? key, String? value) => (super.noSuchMethod(
        Invocation.method(#setString, [key, value]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> setStringList(String? key, List<String>? value) => (super.noSuchMethod(
        Invocation.method(#setStringList, [key, value]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> remove(String? key) => (super.noSuchMethod(
        Invocation.method(#remove, [key]),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);

  @override
  _i18.Future<void> clear({Set<String>? allowList}) => (super.noSuchMethod(
        Invocation.method(#clear, [], {#allowList: allowList}),
        returnValue: _i18.Future<void>.value(),
        returnValueForMissingStub: _i18.Future<void>.value(),
      ) as _i18.Future<void>);
}
