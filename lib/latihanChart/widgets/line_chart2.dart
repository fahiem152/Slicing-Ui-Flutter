import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartSimple2 extends StatefulWidget {
  const LineChartSimple2({super.key});

  @override
  State<LineChartSimple2> createState() => _LineChartSimple2State();
}

class _LineChartSimple2State extends State<LineChartSimple2> {
  List<LineChartBarData> lineChartBarData = [
    LineChartBarData(
      color: Color.fromARGB(255, 25, 95, 247),
      isStrokeCapRound: true,
      // isStrokeJoinRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        color: Color.fromARGB(255, 25, 95, 247).withOpacity(0.5),
      ),
      barWidth: 5,
      isCurved: true,
      spots: [
        FlSpot(1, 1),
        FlSpot(2, 4),
        FlSpot(3, 8),
        FlSpot(4, 9),
        FlSpot(5, 13),
        FlSpot(6, 14),
        FlSpot(7, 12),
        FlSpot(8, 10),
        FlSpot(9, 15),
        FlSpot(10, 20),
        FlSpot(11, 25),
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        // color: Colors.white,
        color: Color.fromARGB(255, 171, 171, 217),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'BBCA',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: LineChart(
                  LineChartData(
                    backgroundColor: Color.fromARGB(255, 1, 1, 26),
                    minX: 1,
                    minY: 0,
                    maxX: 11,
                    maxY: 30,
                    lineBarsData: lineChartBarData,
                    gridData: FlGridData(
                      show: true,
                      horizontalInterval: 5,
                      verticalInterval: 3,
                      getDrawingHorizontalLine: ((value) => FlLine(
                            color: Color.fromARGB(255, 66, 66, 99),
                            strokeWidth: 3,
                          )),
                      getDrawingVerticalLine: ((value) => FlLine(
                            color: Color.fromARGB(255, 66, 66, 99),
                          )),
                    ),
                    borderData: FlBorderData(
                        border: Border(
                      bottom: BorderSide(color: Color(0xff4e4965), width: 4),
                      left: BorderSide(color: Colors.transparent),
                      right: BorderSide(color: Color(0xff4e4965), width: 4),
                      top: BorderSide(color: Colors.transparent),
                    )),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: bottomTitleWidgets,
                        ),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                        ),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = const Text('SEPT', style: style);
      break;
    case 6:
      text = const Text('OCT', style: style);
      break;
    case 10:
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
