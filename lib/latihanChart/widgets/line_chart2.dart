import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartSimple2 extends StatefulWidget {
  const LineChartSimple2({super.key});

  @override
  State<LineChartSimple2> createState() => _LineChartSimple2State();
}

class _LineChartSimple2State extends State<LineChartSimple2> {
  List<FlSpot> spot = [
    FlSpot(1, 10),
    FlSpot(2, 20),
    FlSpot(3, 30),
    FlSpot(4, 40),
    FlSpot(5, 50),
  ];
  List<BarChartGroupData> barChartGroupData = [
    BarChartGroupData(x: 1, barRods: [
      BarChartRodData(toY: 5.5, color: Colors.black),
    ]),
    BarChartGroupData(x: 2, barRods: [
      BarChartRodData(toY: 12, color: Colors.black),
    ]),
    BarChartGroupData(x: 3, barRods: [
      BarChartRodData(toY: 8, color: Colors.black),
    ]),
    BarChartGroupData(x: 4, barRods: [
      BarChartRodData(toY: 11.4, color: Colors.black),
    ]),
    BarChartGroupData(x: 5, barRods: [
      BarChartRodData(toY: 5, color: Colors.black),
    ]),
    BarChartGroupData(x: 6, barRods: [
      BarChartRodData(toY: 14, color: Colors.black),
    ]),
    BarChartGroupData(x: 7, barRods: [
      BarChartRodData(toY: 10.5, color: Colors.black),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withOpacity(0.7),
      child: AspectRatio(
        aspectRatio: 1.3,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'BBCA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            LineChart(LineChartData(lineBarsData: [
              LineChartBarData(
                spots: spot,
                isCurved: true,
                color: const Color(0xff4af699),
                barWidth: 8,
                isStrokeCapRound: true,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
