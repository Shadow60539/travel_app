import 'package:flutter/material.dart';
import 'package:travel_app/core/colors.dart';

class ProgressPainter extends CustomPainter {
  final ScrollController? scrollController;

  ProgressPainter(this.scrollController);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint _greenPaint = Paint()
      ..color = kGreenColor
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    final Paint _greyPaint = Paint()
      ..color = Colors.grey[300]!
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    final Paint _whitePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    final Offset p1 = Offset.zero;

    double dashHeight = 5, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = Colors.grey[300]!
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
    canvas.drawCircle(p1, 10, _greenPaint);
    canvas.drawCircle(p1, 3, _whitePaint);

    canvas.drawCircle(p1 + const Offset(0, 155), 10, _greyPaint);
    canvas.drawCircle(p1 + const Offset(0, 155), 3, _whitePaint);
    canvas.drawCircle(p1 + const Offset(0, 2 * 155.0), 10, _greyPaint);
    canvas.drawCircle(p1 + const Offset(0, 2 * 155.0), 3, _whitePaint);
    canvas.drawCircle(p1 + const Offset(0, 3 * 155.0), 10, _greyPaint);
    canvas.drawCircle(p1 + const Offset(0, 3 * 155.0), 3, _whitePaint);

    for (double currentScrollPixel = 10;
        currentScrollPixel < scrollController!.position.pixels;
        currentScrollPixel++) {
      if (currentScrollPixel < 470) {
        canvas.drawLine(
            const Offset(0, 6), Offset(0, currentScrollPixel), _greenPaint);
      }
      if (scrollController!.position.pixels > 150) {
        canvas.drawCircle(p1 + const Offset(0, 155), 10, _greenPaint);
        canvas.drawCircle(p1 + const Offset(0, 155), 3, _whitePaint);
      }
      if (scrollController!.position.pixels > 300) {
        canvas.drawCircle(p1 + const Offset(0, 2 * 155.0), 10, _greenPaint);
        canvas.drawCircle(p1 + const Offset(0, 2 * 155.0), 3, _whitePaint);
      }
      if (scrollController!.position.pixels > 455) {
        canvas.drawCircle(p1 + const Offset(0, 3 * 155.0), 10, _greenPaint);
        canvas.drawCircle(p1 + const Offset(0, 3 * 155.0), 3, _whitePaint);
      }
    }
  }

  @override
  bool shouldRepaint(ProgressPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ProgressPainter oldDelegate) => false;
}
