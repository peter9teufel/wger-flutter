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

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wger/helpers/charts.dart';
import 'package:wger/helpers/colors.dart';
import 'package:wger/helpers/misc.dart';
import 'package:wger/l10n/generated/app_localizations.dart';
import 'package:wger/models/workouts/log.dart';

class LogChartWidgetFl extends StatefulWidget {
  final Map<num, List<Log>> _data;
  final DateTime _currentDate;

  const LogChartWidgetFl(this._data, this._currentDate);

  @override
  State<LogChartWidgetFl> createState() => _LogChartWidgetFlState();
}

class _LogChartWidgetFlState extends State<LogChartWidgetFl> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 12),
        child: LineChart(mainData()),
      ),
    );
  }

  LineTouchData tooltipData() {
    return LineTouchData(
      touchTooltipData: LineTouchTooltipData(
        getTooltipItems: (touchedSpots) {
          return touchedSpots.map((touchedSpot) {
            // Retrieve the repetitions (bit ugly, but it works)
            final List<num> keys = widget._data.keys.toList();
            final mapKey = keys[touchedSpot.barIndex];
            final reps = widget._data[mapKey]?.first.repetitions;

            return LineTooltipItem(
              '${formatNum(reps!)} × ${touchedSpot.y} kg',
              const TextStyle(color: Colors.white),
            );
          }).toList();
        },
      ),
    );
  }

  LineChartData mainData() {
    final colors = generateChartColors(widget._data.keys.length).iterator;

    return LineChartData(
      lineTouchData: tooltipData(),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return const FlLine(color: Colors.grey, strokeWidth: 1);
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(color: Colors.grey, strokeWidth: 1);
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              // Don't show the first and last entries, otherwise they'll overlap with the
              // calculated interval
              if (value == meta.min || value == meta.max) {
                return const Text('');
              }

              final DateTime date = DateTime.fromMillisecondsSinceEpoch(value.toInt());
              return Text(
                DateFormat.yMd(Localizations.localeOf(context).languageCode).format(date),
              );
            },
            interval: chartGetInterval(
              widget._data.containsKey(widget._data.keys.first) &&
                      widget._data[widget._data.keys.first]!.isNotEmpty
                  ? widget._data[widget._data.keys.first]!.first.date
                  : DateTime.now(),
              widget._data.containsKey(widget._data.keys.last) &&
                      widget._data[widget._data.keys.last]!.isNotEmpty
                  ? widget._data[widget._data.keys.last]!.last.date
                  : DateTime.now(),
              // widget._data[widget._data.keys.first]!.first.date,
              // widget._data[widget._data.keys.last]!.first.date,
            ),
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 70,
            getTitlesWidget: (value, meta) {
              return Text('$value ${AppLocalizations.of(context).kg}');
            },
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      lineBarsData: [
        ...widget._data.keys.map((reps) {
          colors.moveNext();
          return LineChartBarData(
            spots: [
              ...widget._data[reps]!.map(
                (entry) => FlSpot(
                  entry.date.millisecondsSinceEpoch.toDouble(),
                  entry.weight!.toDouble(),
                ),
              ),
            ],
            isCurved: true,
            color: colors.current,
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (p0, p1, p2, p3) => FlDotCirclePainter(
                radius: 2,
                color: Colors.black,
                strokeWidth: 0,
              ),
            ),
          );
        }),
      ],
    );
  }
}
