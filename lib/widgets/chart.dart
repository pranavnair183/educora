import 'package:educora/utils/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        rangeAnnotations: RangeAnnotations(verticalRangeAnnotations: [
          VerticalRangeAnnotation(
            x1: 5,
            x2: 7,
            color: AppColorData.rangeAnnotation,
          )
        ]),
        lineBarsData: lineBarsData1,
        extraLinesData: ExtraLinesData(
          horizontalLines: [
            HorizontalLine(
              y: 0,
              dashArray: [1, 4, 7, 9, 10],
              color: AppColorData.chartItems,
            ),
            HorizontalLine(
              y: 1,
              dashArray: [1, 4, 7, 9, 10],
              color: AppColorData.chartItems,
            ),
            HorizontalLine(
              y: 2,
              dashArray: [1, 4, 7, 9, 10],
              color: AppColorData.chartItems,
            ),
            HorizontalLine(
              y: 3,
              dashArray: [1, 4, 7, 9, 10],
              color: AppColorData.chartItems,
            ),
            HorizontalLine(
              y: 4,
              dashArray: [1, 4, 7, 9, 10],
              color: AppColorData.chartItems,
            ),
          ],
        ),
        minX: 0,
        maxX: 14,
        maxY: 4,
        minY: 0,
      );
  LineTouchData get lineTouchData1 => LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          fitInsideHorizontally: true,
          fitInsideVertically: true,
          tooltipBgColor: Theme.of(context).primaryColor,
          tooltipRoundedRadius: 1.6.h,
          maxContentWidth: 0,
          showOnTopOfTheChartBoxArea: false,
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: bottomTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: leftTitles(
          getTitles: (value) {
            switch (value.toInt()) {
              case 5:
                return '2h30m';
              case 4:
                return '2h0m';
              case 3:
                return '1h30m';
              case 2:
                return '1h0m';
              case 1:
                return '0h30m';
              case 0:
                return '0h0m';
            }
            return '';
          },
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
      ];
  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
        getTitles: getTitles,
        showTitles: true,
        margin: 3.w,
        interval: 1,
        reservedSize: 10.w,
        getTextStyles: (context, value) => TextStyle(
          color: AppColorData.chartItems,
          fontWeight: FontWeight.w500,
          fontSize: 9.sp,
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 1.h,
        margin: 2.h,
        interval: 1,
        getTextStyles: (context, value) => TextStyle(
          color: AppColorData.chartItems,
          fontWeight: FontWeight.w500,
          fontSize: 9.sp,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return '8AM';
            case 3:
              return '9AM';
            case 6:
              return '10AM';
            case 9:
              return '11AM';
            case 12:
              return '12PM';
          }
          return '';
        },
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData =>
      FlBorderData(show: true, border: Border.all(color: Colors.transparent));

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        colors: [
          AppColorData.chartLine,
          AppColorData.primaryTxt,
          AppColorData.chartLine,
          AppColorData.primaryTxt,
          AppColorData.chartLine,
          AppColorData.primaryTxt,
          AppColorData.chartLine,
        ],
        barWidth: 0.7.h,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
          checkToShowDot: (spot, _) {
            if (spot == FlSpot(8, 3.2)) {
              return true;
            }
            return false;
          },
          getDotPainter: (spot, percent, barData, index) {
            return FlDotCirclePainter(
              radius: 1.h,
              color: AppColorData.secondaryIcon,
              strokeWidth: 1.h,
              strokeColor: AppColorData.chartLine,
            );
          },
        ),
        showingIndicators: [1],
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(0, 1),
          FlSpot(1, 1.2),
          FlSpot(2, 1),
          FlSpot(3, 0.8),
          FlSpot(4, 0.8),
          FlSpot(5, 1.2),
          FlSpot(6, 1.1),
          FlSpot(8, 3.2),
          FlSpot(11.5, 1.1),
          FlSpot(13.6, 2.7),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        colors: [const Color(0xffaa4cfc)],
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false, colors: [
          const Color(0x00aa4cfc),
        ]),
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
        isCurved: true,
        colors: const [Color(0xff27b6fc)],
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(1, 2.8),
          FlSpot(3, 1.9),
          FlSpot(6, 3),
          FlSpot(10, 1.3),
          FlSpot(13, 2.5),
        ],
      );
}
