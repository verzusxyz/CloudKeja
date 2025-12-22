import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../data/models/models.dart' show DashboardAccountingChartModel;

class AccountingBarChart extends StatelessWidget {
  const AccountingBarChart({super.key, required this.data});
  final DashboardAccountingChartModel? data;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final incomeColor = _theme.colorScheme.primary;
    final expenseColor = DAppColors.kPendingColor;

    final incomeData = data?.incomeAmountData ?? [];
    final expenseData = data?.expenseAmountData ?? [];
    final maxYValue = (data?.maxValue ?? 50).toDouble();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40,
          child: Column(
            children: List.generate(6, (index) {
              final value = maxYValue - (index * (maxYValue / 5));
              return Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    value.compactNumber(),
                    style: _theme.textTheme.bodySmall?.copyWith(
                      color: _theme.colorScheme.secondary,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox.square(dimension: 10),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.sizeOf(context).width,
                maxWidth:
                    incomeData.length * 28 < MediaQuery.sizeOf(context).width
                        ? MediaQuery.sizeOf(context).width
                        : incomeData.length * 28,
              ),
              child: BarChart(
                BarChartData(
                  minY: 0,
                  maxY: maxYValue,
                  barGroups: List.generate(
                    incomeData.length,
                    (index) {
                      return BarChartGroupData(
                        x: index * 16,
                        barRods: [
                          BarChartRodData(
                            toY: (incomeData[index].amount ?? 0).toDouble(),
                            color: incomeColor,
                            width: 6,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          BarChartRodData(
                            toY: (expenseData[index].amount ?? 0).toDouble(),
                            color: expenseColor,
                            width: 6,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ],
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: hideTitles,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          int index = (value / 16).round();
                          if (index < 0 || index >= incomeData.length) {
                            return const SizedBox();
                          }
                          return Text(
                            incomeData[index].date ?? "",
                            style: _theme.textTheme.bodySmall?.copyWith(
                              color: _theme.colorScheme.secondary,
                            ),
                          );
                        },
                        reservedSize: 20,
                      ),
                    ),
                    topTitles: hideTitles,
                    rightTitles: hideTitles,
                  ),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: _theme.colorScheme.outline.withOpacity(0.35),
                        strokeWidth: 1,
                        dashArray: [4, 8],
                      );
                    },
                  ),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  final hideTitles = const AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  );
}
