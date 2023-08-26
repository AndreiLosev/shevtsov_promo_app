import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/configurable_path.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_circuit_element.dart';

class PaintPump extends PaintCircuitEelement {

    PaintPump(super.run, {super.corner = 0.0, super.size = 1.0});

    @override
    void paint(Canvas canvas, Size size) {
        final paint = Paint()
            ..strokeWidth = 3
            ..color = run ? Colors.green : Colors.grey;

        final pathConfig = PathConfig(corner, this.size, shift);

        final path = ConfigurablePath(pathConfig)
            ..cMamoveTo(-20, -35)
            ..cLineTo(-20, 35)
            ..cLineTo(40, 0)
            ..cLineTo(-20, -35);

        canvas.drawPath(path.path(), paint);

        _paintStatic(canvas);
    }

    void _paintStatic(Canvas canvas) {
        final paint = Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 3
            ..color = Colors.black
        ;

        canvas.drawCircle(Offset(shift.$1, shift.$2), 40 * size, paint);
        
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) => false;
}
