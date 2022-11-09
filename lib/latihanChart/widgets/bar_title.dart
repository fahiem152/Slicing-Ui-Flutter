import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/latihanChart/data/bar_data.dart';

class BarTitles {
  static SideTitles getBottomTitles() => SideTitles(
        showTitles: true,
        getTitlesWidget: bottomTitleWidgets,
      );
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff72719b),
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = const Text('Sun', style: style);
      break;
    case 7:
      text = const Text('OCT', style: style);
      break;
    case 12:
      text = const Text('DEC', style: style);
      break;
    default:
      text = const Text('');
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

SideTitles get bottomTitles => SideTitles(
      showTitles: true,
      reservedSize: 32,
      interval: 1,
      getTitlesWidget: bottomTitleWidgets,
    );
