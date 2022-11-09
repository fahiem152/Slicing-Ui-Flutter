import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSimple extends StatefulWidget {
  BarChartSimple({Key? key}) : super(key: key);

  @override
  State<BarChartSimple> createState() => _BarChartSimpleState();
}

class _BarChartSimpleState extends State<BarChartSimple> {
  late int showingTooltip;
  @override
  void initState() {
    showingTooltip = -1;
    super.initState();
  }

  BarChartGroupData generateGroupData(
    int x,
    int y,
    Color color,
  ) {
    return BarChartGroupData(
        x: x,
        showingTooltipIndicators: showingTooltip == x ? [0] : [],
        barRods: [
          BarChartRodData(
            toY: y.toDouble(),
            color: color,
            width: 12,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            borderSide: BorderSide(color: Colors.white, width: 3),
          ),
        ]);
  }

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(
          12,
        ),
        child: Card(
          child: Column(
            children: [
              Text(
                'BarChart Simple',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 1.3,
                  child: BarChart(
                    BarChartData(
                      baselineY: 5,
                      borderData: FlBorderData(
                          show: true,
                          border: Border.all(color: Colors.amber, width: 3)),
                      backgroundColor: Colors.amber.withOpacity(0.5),
                      gridData: FlGridData(show: false),
                      maxY: 25,
                      titlesData: FlTitlesData(
                        rightTitles: AxisTitles(drawBehindEverything: false),
                        topTitles: AxisTitles(drawBehindEverything: false),
                      ),
                      barGroups: [
                        generateGroupData(1, 5, Colors.blue),
                        generateGroupData(2, 10, Colors.red),
                        generateGroupData(3, 15, Colors.black),
                        generateGroupData(4, 20, Colors.green),
                        generateGroupData(5, 15, Colors.purple),
                      ],
                      barTouchData: BarTouchData(
                        enabled: true,
                        handleBuiltInTouches: false,
                        touchCallback: (event, response) {
                          if (response != null &&
                              response.spot != null &&
                              event is FlTapUpEvent) {
                            setState(() {
                              final x = response.spot!.touchedBarGroup.x;
                              final isshowing = showingTooltip == x;
                              if (isshowing) {
                                showingTooltip = -1;
                              } else {
                                showingTooltip = x;
                              }
                            });
                          }
                        },
                        mouseCursorResolver: (event, response) {
                          return response == null || response.spot == null
                              ? MouseCursor.defer
                              : SystemMouseCursors.click;
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
