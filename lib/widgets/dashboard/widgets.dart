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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:wger/models/nutrition/log.dart';
import 'package:wger/models/nutrition/nutritional_plan.dart';
import 'package:wger/models/workouts/workout_plan.dart';
import 'package:wger/providers/body_weight.dart';
import 'package:wger/providers/measurement.dart';
import 'package:wger/providers/nutrition.dart';
import 'package:wger/providers/user.dart';
import 'package:wger/providers/workout_plans.dart';
import 'package:wger/screens/form_screen.dart';
import 'package:wger/screens/gym_mode.dart';
import 'package:wger/screens/measurement_categories_screen.dart';
import 'package:wger/screens/nutritional_plan_screen.dart';
import 'package:wger/screens/weight_screen.dart';
import 'package:wger/screens/workout_plan_screen.dart';
import 'package:wger/theme/theme.dart';
import 'package:wger/widgets/core/core.dart';
import 'package:wger/widgets/measurements/categories_card.dart';
import 'package:wger/widgets/measurements/charts.dart';
import 'package:wger/widgets/measurements/forms.dart';
import 'package:wger/widgets/nutrition/charts.dart';
import 'package:wger/widgets/nutrition/forms.dart';
import 'package:wger/widgets/weight/forms.dart';
import 'package:wger/widgets/workouts/forms.dart';

class DashboardNutritionWidget extends StatefulWidget {
  @override
  _DashboardNutritionWidgetState createState() => _DashboardNutritionWidgetState();
}

class _DashboardNutritionWidgetState extends State<DashboardNutritionWidget> {
  NutritionalPlan? _plan;
  var _showDetail = false;
  bool _hasContent = false;

  @override
  void initState() {
    super.initState();
    _plan = Provider.of<NutritionPlansProvider>(context, listen: false).currentPlan;
    _hasContent = _plan != null;
  }

  List<Widget> getContent() {
    final List<Widget> out = [];

    if (!_hasContent) {
      return out;
    }

    final List<Log> logsForToday = _plan!.logsForToday();
    if (_plan!.meals.isEmpty && logsForToday.isEmpty) {
      out.add(const Row(
        children: [Text('Noch keine Einträge für heute')],
      ));
      return out;
    } else {
      if (_plan!.meals.isEmpty) {
        // show logs summary
        double fat = 0;
        double energy = 0;
        double protein = 0;
        double carbohydrates = 0;
        String? date;
        for (final log in _plan!.logs) {
          if (log.datetime.day == DateTime.now().day &&
              log.datetime.month == DateTime.now().month &&
              log.datetime.year == DateTime.now().year) {
            date ??=
                DateFormat.yMd(Localizations.localeOf(context).languageCode).format(log.datetime);
            fat += log.nutritionalValues.fat;
            energy += log.nutritionalValues.energy;
            protein += log.nutritionalValues.protein;
            carbohydrates += log.nutritionalValues.carbohydrates;
          }
        }
        out.add(
          Row(
            children: [
              Expanded(
                child: Text(
                  date!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  //textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        );
        out.add(Row(children: [
          MutedText(
              '${AppLocalizations.of(context).energy}: ${energy.toStringAsFixed(0)}${AppLocalizations.of(context).kcal}'),
        ]));
        out.add(Row(children: [
          MutedText(
              '${AppLocalizations.of(context).protein}: ${protein.toStringAsFixed(0)}${AppLocalizations.of(context).g}'),
        ]));
        out.add(Row(children: [
          MutedText(
              '${AppLocalizations.of(context).carbohydrates}: ${carbohydrates.toStringAsFixed(0)}${AppLocalizations.of(context).g}'),
        ]));
        out.add(Row(children: [
          MutedText(
              '${AppLocalizations.of(context).fat}: ${fat.toStringAsFixed(0)}${AppLocalizations.of(context).g} '),
        ]));
        out.add(const SizedBox(height: 5));
      }

      for (final meal in _plan!.meals) {
        out.add(
          Row(
            children: [
              Expanded(
                child: Text(
                  meal.time!.format(context),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  //textAlign: TextAlign.left,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  MutedText(
                      '${AppLocalizations.of(context).energyShort} ${meal.nutritionalValues.energy.toStringAsFixed(0)}${AppLocalizations.of(context).kcal}'),
                  const MutedText(' / '),
                  MutedText(
                      '${AppLocalizations.of(context).proteinShort} ${meal.nutritionalValues.protein.toStringAsFixed(0)}${AppLocalizations.of(context).g}'),
                  const MutedText(' / '),
                  MutedText(
                      '${AppLocalizations.of(context).carbohydratesShort} ${meal.nutritionalValues.carbohydrates.toStringAsFixed(0)}${AppLocalizations.of(context).g}'),
                  const MutedText(' / '),
                  MutedText(
                      '${AppLocalizations.of(context).fatShort} ${meal.nutritionalValues.fat.toStringAsFixed(0)}${AppLocalizations.of(context).g} '),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.history_edu),
                color: wgerPrimaryButtonColor,
                onPressed: () {
                  Provider.of<NutritionPlansProvider>(context, listen: false).logMealToDiary(meal);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context).mealLogged,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
        out.add(const SizedBox(height: 5));

        if (_showDetail) {
          for (final item in meal.mealItems) {
            out.add(
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          item.ingredientObj.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text('${item.amount.toStringAsFixed(0)} ${AppLocalizations.of(context).g}'),
                    ],
                  ),
                ],
              ),
            );
          }
          out.add(const SizedBox(height: 10));
        }
        out.add(const Divider());
      }
    }

    return out;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              _hasContent ? _plan!.description : AppLocalizations.of(context).nutritionalPlan,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Text(
              _hasContent
                  ? 'Erstellt: ${DateFormat.yMd(Localizations.localeOf(context).languageCode).format(_plan!.creationDate)}'
                  : '',
            ),
            leading: Icon(
              Icons.restaurant,
              color: Theme.of(context).textTheme.headlineSmall!.color,
            ),
            trailing: _hasContent
                ? Tooltip(
                    message: AppLocalizations.of(context).toggleDetails,
                    child: _showDetail
                        ? const Icon(
                            Icons.info,
                          )
                        : const Icon(Icons.info_outline))
                : const SizedBox(),
            onTap: () {
              setState(() {
                _showDetail = !_showDetail;
              });
            },
          ),
          if (_hasContent)
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ...getContent(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                      height: 180,
                      child: FlNutritionalPlanPieChartWidget(
                          _plan!.getNutritionalValuesForMealsOrLogs()),
                    )
                  ],
                ))
          else
            NothingFound(
              AppLocalizations.of(context).noNutritionalPlans,
              AppLocalizations.of(context).newNutritionalPlan,
              PlanForm(),
            ),
          if (_hasContent)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: Text(AppLocalizations.of(context).goToDetailPage),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(NutritionalPlanScreen.routeName, arguments: _plan);
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.history_edu,
                  ),
                  tooltip: AppLocalizations.of(context).logIngredient,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      FormScreen.routeName,
                      arguments: FormScreenArguments(
                        AppLocalizations.of(context).logIngredient,
                        IngredientLogForm(_plan!),
                        hasListView: true,
                      ),
                    );
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class DashboardWeightWidget extends StatefulWidget {
  @override
  _DashboardWeightWidgetState createState() => _DashboardWeightWidgetState();
}

class _DashboardWeightWidgetState extends State<DashboardWeightWidget> {
  late BodyWeightProvider weightEntriesData;

  @override
  Widget build(BuildContext context) {
    final profile = context.read<UserProvider>().profile;
    weightEntriesData = Provider.of<BodyWeightProvider>(context, listen: false);

    return Consumer<BodyWeightProvider>(
      builder: (context, workoutProvider, child) => Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                AppLocalizations.of(context).weight,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              leading: FaIcon(
                FontAwesomeIcons.weightScale,
                color: Theme.of(context).textTheme.headlineSmall!.color,
              ),
            ),
            Column(
              children: [
                if (weightEntriesData.items.isNotEmpty)
                  Column(
                    children: [
                      SizedBox(
                        height: 200,
                        child: MeasurementChartWidgetFl(
                            weightEntriesData.items
                                .map((e) => MeasurementChartEntry(e.weight, e.date))
                                .toList(),
                            unit: profile!.isMetric
                                ? AppLocalizations.of(context).kg
                                : AppLocalizations.of(context).lb),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton(
                              child: Text(AppLocalizations.of(context).goToDetailPage),
                              onPressed: () {
                                Navigator.of(context).pushNamed(WeightScreen.routeName);
                              }),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () async {
                              Navigator.pushNamed(
                                context,
                                FormScreen.routeName,
                                arguments: FormScreenArguments(
                                  AppLocalizations.of(context).newEntry,
                                  WeightForm(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                else
                  NothingFound(
                    AppLocalizations.of(context).noWeightEntries,
                    AppLocalizations.of(context).newEntry,
                    WeightForm(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardMeasurementWidget extends StatefulWidget {
  @override
  _DashboardMeasurementWidgetState createState() => _DashboardMeasurementWidgetState();
}

class _DashboardMeasurementWidgetState extends State<DashboardMeasurementWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MeasurementProvider>(context, listen: false);

    final items = provider.categories
        .map<Widget>(
          (item) => CategoriesCard(
            item,
            elevation: 0,
          ),
        )
        .toList();
    if (items.isNotEmpty) {
      items.add(
        NothingFound(
          AppLocalizations.of(context).moreMeasurementEntries,
          AppLocalizations.of(context).newEntry,
          MeasurementCategoryForm(),
        ),
      );
    }
    return Consumer<MeasurementProvider>(
      builder: (context, workoutProvider, child) => Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                AppLocalizations.of(context).measurements,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              leading: FaIcon(
                FontAwesomeIcons.chartLine,
                color: Theme.of(context).textTheme.headlineSmall!.color,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () => Navigator.pushNamed(
                  context,
                  MeasurementCategoriesScreen.routeName,
                ),
              ),
            ),
            Column(
              children: [
                if (items.isNotEmpty)
                  Column(
                    children: [
                      CarouselSlider(
                        items: items,
                        carouselController: _controller,
                        options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: false,
                          viewportFraction: 1,
                          enableInfiniteScroll: false,
                          aspectRatio: 1.1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: items.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .color!
                                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  )
                else
                  NothingFound(
                    AppLocalizations.of(context).noMeasurementEntries,
                    AppLocalizations.of(context).newEntry,
                    MeasurementCategoryForm(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardWorkoutWidget extends StatefulWidget {
  @override
  _DashboardWorkoutWidgetState createState() => _DashboardWorkoutWidgetState();
}

class _DashboardWorkoutWidgetState extends State<DashboardWorkoutWidget> {
  var _showDetail = false;
  bool _hasContent = false;

  WorkoutPlan? _workoutPlan;

  @override
  void initState() {
    super.initState();
    _workoutPlan = context.read<WorkoutPlansProvider>().activePlan;
    _hasContent = _workoutPlan != null;
  }

  List<Widget> getContent() {
    final List<Widget> out = [];

    if (!_hasContent) {
      return out;
    }

    for (final day in _workoutPlan!.days) {
      out.add(SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Text(
                day.description,
                style: const TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: MutedText(
                day.getDaysText,
                textAlign: TextAlign.right,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.play_arrow),
              color: wgerPrimaryButtonColor,
              onPressed: () {
                Navigator.of(context).pushNamed(GymModeScreen.routeName, arguments: day);
              },
            ),
          ],
        ),
      ));

      for (final set in day.sets) {
        out.add(SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...set.settingsFiltered.map((s) {
                return _showDetail
                    ? Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(s.exerciseObj
                                  .getExercise(Localizations.localeOf(context).languageCode)
                                  .name),
                              const SizedBox(width: 10),
                              MutedText(set.getSmartRepr(s.exerciseObj).join('\n')),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      )
                    : Container();
              }),
            ],
          ),
        ));
      }
      out.add(const Divider());
    }

    return out;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              _hasContent ? _workoutPlan!.name : AppLocalizations.of(context).labelWorkoutPlan,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Text(
              _hasContent
                  ? DateFormat.yMd(Localizations.localeOf(context).languageCode)
                      .format(_workoutPlan!.creationDate)
                  : '',
            ),
            leading: Icon(
              Icons.fitness_center,
              color: Theme.of(context).textTheme.headlineSmall!.color,
            ),
            trailing: _hasContent
                ? Tooltip(
                    message: AppLocalizations.of(context).toggleDetails,
                    child: _showDetail
                        ? const Icon(
                            Icons.info,
                          )
                        : const Icon(Icons.info_outline))
                : const SizedBox(),
            onTap: () {
              setState(() {
                _showDetail = !_showDetail;
              });
            },
          ),
          if (_hasContent)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ...getContent(),
                ],
              ),
            )
          else
            NothingFound(
              AppLocalizations.of(context).noWorkoutPlans,
              AppLocalizations.of(context).newWorkout,
              WorkoutForm(WorkoutPlan.empty()),
            ),
          if (_hasContent)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: Text(AppLocalizations.of(context).goToDetailPage),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(WorkoutPlanScreen.routeName, arguments: _workoutPlan);
                  },
                ),
              ],
            )
        ],
      ),
    );
  }
}

class NothingFound extends StatelessWidget {
  final String _title;
  final String _titleForm;
  final Widget _form;

  const NothingFound(this._title, this._titleForm, this._form);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_title),
          IconButton(
            iconSize: 30,
            icon: const Icon(
              Icons.add_box,
              color: wgerPrimaryButtonColor,
            ),
            onPressed: () async {
              Navigator.pushNamed(
                context,
                FormScreen.routeName,
                arguments: FormScreenArguments(
                  _titleForm,
                  _form,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
