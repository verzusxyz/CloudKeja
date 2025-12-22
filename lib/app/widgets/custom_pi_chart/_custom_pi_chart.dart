import 'dart:math' as math;

import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

part '_custom_pi_chart_painter.dart';

class CustomPiChart extends StatelessWidget {
  const CustomPiChart({
    super.key,
    required this.chartData,
    this.customLegendBuilder,
    this.centerWidget,
    this.strokeWidth,
    this.chartSize,
  });

  final List<CustomPiChartData> chartData;
  final CustomLegendBuilder? customLegendBuilder;
  final Widget? centerWidget;
  final double? strokeWidth;
  final double? chartSize;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        double _refSize = chartSize ?? 0;
        if (chartSize == null) {
          if (constraints.maxHeight < constraints.maxWidth) {
            _refSize = constraints.maxHeight / 1.5;
          } else {
            _refSize = constraints.maxWidth / 2;
          }
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.square(
              dimension: _refSize,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CustomPaint(
                        painter: CustomPieChartPainter(
                          chartData,
                          strokeWidth: strokeWidth,
                        ),
                      ),
                    ),
                  ),
                  Center(child: centerWidget),
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: chartData.map(
                  (item) {
                    return Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 6,
                      ),
                      child: customLegendBuilder?.call(context, item) ??
                          Text.rich(
                            TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.circle,
                                    size: 16,
                                    color: item.color,
                                  ).fMarginOnly(right: 4),
                                ),
                                if (item.label != null) item.label!
                              ],
                            ),
                            style: _theme.textTheme.bodyMedium,
                          ),
                    );
                  },
                ).toList(),
              ),
            ),
          ].reversed.toList(),
        );
      },
    );
  }
}

enum CustomPiChartLegendAlignment { left, right }

typedef CustomLegendBuilder = Widget Function(
  BuildContext context,
  CustomPiChartData chartData,
);
