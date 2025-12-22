part of '_custom_pi_chart.dart';

class CustomPieChartPainter extends CustomPainter {
  const CustomPieChartPainter(
    this.chartData, {
    this.strokeWidth,
    this.emptyColor,
  });

  final List<CustomPiChartData> chartData;
  final double? strokeWidth;
  final Color? emptyColor;

  @override
  void paint(Canvas canvas, Size size) {
    final double minDimension = math.min(size.width, size.height);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth ?? (minDimension * 0.1)
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final total = chartData.fold<double>(0, (p, eV) => p + eV.value);
    double startAngle = -math.pi / 2;

    if (total == 0) {
      paint.color = emptyColor ?? Colors.grey.withValues(alpha: 0.3);
      canvas.drawArc(
        Rect.fromCircle(
          center: Offset(minDimension / 2, minDimension / 2),
          radius: minDimension / 2.2,
        ),
        startAngle,
        2 * math.pi,
        false,
        paint,
      );
      return;
    }

    final nonZeroData = chartData.where((d) => d.value > 0).toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    for (var data in nonZeroData) {
      double sweepAngle = (data.value / total) * 2 * math.pi;

      paint.color = data.color ?? Colors.amber;
      canvas.drawArc(
        Rect.fromCircle(
          center: Offset(minDimension / 2, minDimension / 2),
          radius: minDimension / 2.2,
        ),
        startAngle,
        sweepAngle,
        false,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class CustomPiChartData {
  final Color? color;
  final TextSpan? label;
  final num value;

  const CustomPiChartData({
    this.color,
    this.label,
    required this.value,
  });
}
