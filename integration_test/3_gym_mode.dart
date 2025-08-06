import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:wger/l10n/generated/app_localizations.dart';
import 'package:wger/providers/exercises.dart';
import 'package:wger/providers/routines.dart';
import 'package:wger/screens/gym_mode.dart';
import 'package:wger/screens/routine_screen.dart';
import 'package:wger/theme/theme.dart';

import '../test/routine/gym_mode_screen_test.mocks.dart';
import '../test_data/exercises.dart';
import '../test_data/routines.dart';

Widget createGymModeScreen({locale = 'en'}) {
  final key = GlobalKey<NavigatorState>();
  final exercises = getTestExercises();
  final routine = getTestRoutine(exercises: getScreenshotExercises());
  final mockBaseProvider = MockWgerBaseProvider();
  final mockExerciseProvider = MockExercisesProvider();

  when(mockExerciseProvider.findExerciseById(1)).thenReturn(exercises[0]); // bench press
  when(mockExerciseProvider.findExerciseById(6)).thenReturn(exercises[5]); // side raises
  //when(mockExerciseProvider.findExerciseBaseById(2)).thenReturn(bases[1]); // crunches
  //when(mockExerciseProvider.findExerciseBaseById(3)).thenReturn(bases[2]); // dead lift

  return riverpod.ProviderScope(
    child: MultiProvider(
      providers: [
        ChangeNotifierProvider<RoutinesProvider>(
          create: (context) => RoutinesProvider(
            mockBaseProvider,
            mockExerciseProvider,
            [routine],
          ),
        ),
        ChangeNotifierProvider<ExercisesProvider>(
          create: (context) => mockExerciseProvider,
        ),
      ],
      child: MaterialApp(
        locale: Locale(locale),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        navigatorKey: key,
        theme: wgerLightTheme,
        home: TextButton(
          onPressed: () => key.currentState!.push(
            MaterialPageRoute<void>(
              settings: RouteSettings(
                arguments: GymModeArguments(routine.id!, routine.days.first.id!, 1),
              ),
              builder: (_) => const GymModeScreen(),
            ),
          ),
          child: const SizedBox(),
        ),
        routes: {
          RoutineScreen.routeName: (ctx) => const RoutineScreen(),
        },
      ),
    ),
  );
}
