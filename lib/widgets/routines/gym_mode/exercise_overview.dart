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
import 'package:flutter/material.dart';
import 'package:wger/models/exercises/exercise.dart';
import 'package:wger/widgets/exercises/exercises.dart';
import 'package:wger/widgets/routines/gym_mode/navigation.dart';

class ExerciseOverview extends StatelessWidget {
  final PageController _controller;
  final Exercise _exercise;
  final double _ratioCompleted;
  final Map<Exercise, int> _exercisePages;

  const ExerciseOverview(
    this._controller,
    this._exercise,
    this._ratioCompleted,
    this._exercisePages,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavigationHeader(
          _exercise.getTranslation(Localizations.localeOf(context).languageCode).name,
          _controller,
          exercisePages: _exercisePages,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ExerciseDetail(_exercise),
            ),
          ),
        ),
        NavigationFooter(_controller, _ratioCompleted),
      ],
    );
  }
}
