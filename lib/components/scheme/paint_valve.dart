import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/configurable_path.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_circuit_element.dart';

class PaintValve extends PaintCircuitEelement {

    PaintValve(super.run, {super.corner = 0, super.size = 1});

    @override
    void paint(Canvas canvas, Size size) {
        final paint = Paint()
            ..strokeWidth = 3
            ..color = run ? Colors.green : Colors.grey;

        final pathConfig = PathConfig(corner, this.size, shift);

        final path = ConfigurablePath(pathConfig)
            ..cMamoveTo(-40, -30)
            ..cLineTo(-40, 30)
            ..cLineTo(40, -30)
            ..cLineTo(40, 30)
            ..cLineTo(-40, -30)
        ;

        canvas.drawPath(path.path(), paint);

        _paintStatic(canvas);
    }

    void _paintStatic(Canvas canvas) {
        final paint = Paint()
            ..strokeWidth = 3
            ..color = Colors.black
        ;
        canvas.drawCircle(Offset(shift.$1, shift.$2), 10 * size, paint);

        paint.style = PaintingStyle.stroke;

        final pathConfig = PathConfig(corner, size, shift);

        final path = ConfigurablePath(pathConfig)
            ..cMamoveTo(-40, -30)
            ..cLineTo(-40, 30)
            ..cLineTo(40, -30)
            ..cLineTo(40, 30)
            ..cLineTo(-40, -30)
        ;

        canvas.drawPath(path.path(), paint);
        
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) => false;
}
