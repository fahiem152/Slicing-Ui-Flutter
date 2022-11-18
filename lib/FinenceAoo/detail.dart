import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailFinanceApp extends StatefulWidget {
  const DetailFinanceApp({Key? key}) : super(key: key);

  @override
  State<DetailFinanceApp> createState() => _DetailFinanceAppState();
}

class _DetailFinanceAppState extends State<DetailFinanceApp> {
  List<LineChartBarData> lineChartBarData = [
    LineChartBarData(
        color: Color(0xff2785F4),
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: Color(0xff2785F4).withOpacity(0.5),
        ),
        barWidth: 5,
        isCurved: true,
        spots: [
          FlSpot(1, 100),
          FlSpot(2, 200),
          FlSpot(3, 300),
          FlSpot(4, 500),
          FlSpot(5, 700),
          FlSpot(6, 800),
          FlSpot(7, 850),
          FlSpot(8, 700),
          FlSpot(9, 650),
          FlSpot(10, 550),
          FlSpot(11, 600),
          FlSpot(12, 650),
        ]),
    LineChartBarData(
        color: Color(0xffFD4EE7),
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: Color(0xffFD4EE7).withOpacity(0.2),
        ),
        barWidth: 5,
        isCurved: true,
        spots: [
          FlSpot(1, 50),
          FlSpot(2, 100),
          FlSpot(3, 150),
          FlSpot(4, 200),
          FlSpot(5, 250),
          FlSpot(6, 200),
          FlSpot(7, 275),
          FlSpot(8, 300),
          FlSpot(9, 250),
          FlSpot(10, 350),
          FlSpot(11, 300),
          FlSpot(12, 500),
        ])
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.density_medium,
                  size: 31,
                  color: Color(0xff525357),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Total Balance',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9F9F9F),
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '\$ 20,000',
                style: GoogleFonts.poppins(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1E1E1E),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 151,
                  height: 53,
                  decoration: BoxDecoration(
                    color: Color(0xff1E81FB),
                    borderRadius: BorderRadius.circular(
                      11,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Income',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 151,
                  height: 53,
                  decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(
                      11,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Spending',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff929292),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'History',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff222933),
                  ),
                ),
                Container(
                  width: 97,
                  height: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff2183FB),
                      width: 1.2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Month',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2183FB),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff2183FB),
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: LineChart(
                    LineChartData(
                      // backgroundColor: Colors.blue,
                      minX: 1,
                      minY: 0,
                      maxX: 12,
                      maxY: 1000,
                      lineBarsData: lineChartBarData,
                      gridData: FlGridData(
                        show: false,
                      ),
                      borderData: FlBorderData(
                        border: Border(
                          bottom: BorderSide(color: Colors.transparent),
                          left: BorderSide(color: Colors.transparent),
                          right: BorderSide(color: Colors.transparent),
                          top: BorderSide(color: Colors.transparent),
                        ),
                      ),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: bottomTitleWidgets,
                          ),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
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
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Container(
              padding: EdgeInsets.all(24),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xff2A84ED),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 12,
                    ),
                    child: Center(
                      child: CircularPercentIndicator(
                        backgroundColor: Color(0xff5D9EEB),
                        radius: 25,
                        lineWidth: 4,
                        percent: 0.75,
                        center: Text(
                          '75%',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        progressColor: Colors.white,
                      ),
                    ),
                  ),
                  // Container(
                  //   width: 75,
                  //   height: 75,
                  //   decoration: BoxDecoration(
                  //     color: Colors.transparent,
                  //     shape: BoxShape.circle,
                  //     border: Border.all(
                  //       color: Colors.white,
                  //       width: 3,
                  //     ),
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       '25%',
                  //       style: GoogleFonts.poppins(
                  //         fontSize: 10,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  Expanded(
                    child: Text(
                      'Congratulations! Your investmen hasGrown 25% this month',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      // textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
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
      text = const Text('Jan', style: style);
      break;
    case 4:
      text = const Text('Feb', style: style);
      break;
    case 6:
      text = const Text('Mar', style: style);
      break;
    case 8:
      text = const Text('Apr', style: style);
      break;
    case 10:
      text = const Text('May', style: style);
      break;
    case 12:
      text = const Text('Jun', style: style);
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
