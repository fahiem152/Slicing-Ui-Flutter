import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/latihanChart/widgets/bar_chart_sample1.dart';
import 'package:slicing_ui/latihanChart/widgets/bar_chart_widget.dart';
import 'package:slicing_ui/latihanChart/widgets/line_chart.dart';
import 'package:slicing_ui/latihanChart/widgets/line_chart2.dart';
import 'package:slicing_ui/latihanChart/widgets/pie_chart_widget.dart';

class LineChart extends StatefulWidget {
  const LineChart({super.key});

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Chart Flutter'),
        ),
        body: ListView(
          children: [
            BarChartSimple(),
            PieChartSimple(),
            LineChartSample1(),
            LineChartSimple2()
          ],
        ),
      ),
    );
  }
}
