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
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:wger/helpers/consts.dart';
import 'package:wger/helpers/misc.dart';
import 'package:wger/l10n/generated/app_localizations.dart';
import 'package:wger/models/exercises/exercise.dart';
import 'package:wger/models/workouts/routine.dart';
import 'package:wger/models/workouts/session.dart';
import 'package:wger/widgets/routines/forms/session.dart';
import 'package:wger/widgets/routines/gym_mode/navigation.dart';

class SessionPage extends StatelessWidget {
  final Routine _routine;
  final WorkoutSession _session;
  final PageController _controller;
  final Map<Exercise, int> _exercisePages;

  SessionPage(
    this._routine,
    this._controller,
    TimeOfDay start,
    this._exercisePages, {
    int? dayId,
  }) : _session = _routine.sessions.map((sessionApi) => sessionApi.session).firstWhere(
              (session) => session.date.isSameDayAs(clock.now()),
              orElse: () => WorkoutSession(
                dayId: dayId,
                routineId: _routine.id!,
                impression: DEFAULT_IMPRESSION,
                date: clock.now(),
                timeEnd: TimeOfDay.now(),
                timeStart: start,
              ),
            );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavigationHeader(
          AppLocalizations.of(context).workoutSession,
          _controller,
          exercisePages: _exercisePages,
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SessionForm(
            _routine.id!,
            onSaved: () => Navigator.of(context).pop(),
            session: _session,
          ),
        ),
        NavigationFooter(_controller, 1, showNext: false),
      ],
    );
  }
}
