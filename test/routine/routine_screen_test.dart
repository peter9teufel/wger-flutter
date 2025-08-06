/*
 * This file is part of wger Workout Manager <https://github.com/wger-project>.
 * Copyright (C) 2020, 2021 wger Team
 *
 * wger Workout Manager is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * wger Workout Manager is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'dart:io';

import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:provider/provider.dart';
import 'package:wger/database/exercises/exercise_database.dart';
import 'package:wger/l10n/generated/app_localizations.dart';
import 'package:wger/providers/base_provider.dart';
import 'package:wger/providers/exercises.dart';
import 'package:wger/providers/routines.dart';
import 'package:wger/screens/routine_screen.dart';

import '../../test_data/routines.dart';
import 'routine_screen_test.mocks.dart';

@GenerateMocks([WgerBaseProvider])
void main() {
  final mockBaseProvider = MockWgerBaseProvider();
  final exercisesProvider = ExercisesProvider(
    mockBaseProvider,
    database: ExerciseDatabase.inMemory(NativeDatabase.memory()),
  );

  Widget renderWidget({locale = 'en'}) {
    final key = GlobalKey<NavigatorState>();

    return ChangeNotifierProvider<RoutinesProvider>(
      create: (context) => RoutinesProvider(
        mockBaseProvider,
        exercisesProvider,
        [getTestRoutine()],
      ),
      child: MaterialApp(
        locale: Locale(locale),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        navigatorKey: key,
        home: TextButton(
          onPressed: () => key.currentState!.push(
            MaterialPageRoute<void>(
              settings: const RouteSettings(arguments: 1),
              builder: (_) => const RoutineScreen(),
            ),
          ),
          child: const SizedBox(),
        ),
        routes: {RoutineScreen.routeName: (ctx) => const RoutineScreen()},
      ),
    );
  }

  testWidgets(
    'Test the widgets on the routine screen',
    (WidgetTester tester) async {
      tester.view.physicalSize = const Size(500, 1000);
      tester.view.devicePixelRatio = 1.0; // Ensure correct pixel ratio

      await tester.pumpWidget(renderWidget());
      await tester.tap(find.byType(TextButton));
      await tester.pumpAndSettle();

      if (Platform.isLinux) {
        await expectLater(
          find.byType(MaterialApp),
          matchesGoldenFile('goldens/routine_screen_detail.png'),
        );
      }

      expect(find.text('3 day workout'), findsOneWidget);

      expect(find.text('first day'), findsOneWidget);
      expect(find.text('chest, shoulders'), findsOneWidget);

      expect(find.text('second day'), findsOneWidget);
      expect(find.text('legs'), findsOneWidget);

      expect(find.byType(Card), findsWidgets);
      // expect(find.byType(Card), findsNWidgets(4));
    },
    tags: ['golden'],
  );
}
