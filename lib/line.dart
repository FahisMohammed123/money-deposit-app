import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

class mypage1 extends StatelessWidget {
  mypage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: double.infinity,
        child: LineChart(
          LineChartData(
            borderData: FlBorderData(show: false),
            minX: 11,
            maxX: 0,
            minY: 0,
            maxY: 6,
            lineTouchData: LineTouchData(enabled: true),
            titlesData: FlTitlesData(
                show: false,
                bottomTitles: AxisTitles(drawBelowEverything: false)),
            gridData: FlGridData(
              drawHorizontalLine: false,
              drawVerticalLine: false,
            ),
            lineBarsData: [
              LineChartBarData(
                  belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue.shade100,
                            Colors.blue.shade200,
                            Colors.blue.shade50,
                            Colors.white,
                          ])),
                  aboveBarData: BarAreaData(show: false),
                  spots: [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 5),
                    FlSpot(6.8, 3.9),
                    FlSpot(8, 4),
                    FlSpot(9.5, 3),
                    FlSpot(11, 4),
                  ],
                  isCurved: true,
                  barWidth: 5,
                  color: Colors.blue,
                  dotData: FlDotData(show: false)),
              // The red line
            ],
          ),
        ),
      ),
    ));
  }
}
