import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/configurable_path.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_circuit_element.dart';


class Paint3Valve extends PaintCircuitEelement {

    Paint3Valve(super.run, {super.corner = 0, super.size = 1, super.shift = (60, 120)});

    @override
    void paint(Canvas canvas, Size size) {
        final paint = Paint()
            ..strokeWidth = 3
            ..color = Colors.green;

        final negativePaint = Paint()
            ..strokeWidth = 3
            ..color = Colors.grey;

        final pathConfig = PathConfig(corner, this.size, shift);

        final path = ConfigurablePath(pathConfig)
            ..cMamoveTo(0, 0)
            ..cLineTo(-40, 30)
            ..cLineTo(-40, -30)
        ;

        final negativePath = ConfigurablePath(pathConfig)
            ..cMamoveTo(0, 0);

        if (run) {
            path
                ..cLineTo(40, 30)
                ..cLineTo(40, -30);

            negativePath
                ..cLineTo(0, 0)
                ..cLineTo(30, 40)
                ..cLineTo(-30, 40)
                ..cLineTo(0, 0);

        } else {
            path
                ..cLineTo(0, 0)
                ..cLineTo(30, 40)
                ..cLineTo(-30, 40)
                ..cLineTo(0, 0);

            negativePath
                ..cLineTo(40, 30)
                ..cLineTo(40, -30);
        }

        canvas.drawPath(path.path(), paint);
        canvas.drawPath(negativePath.path(), negativePaint);

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
            ..cMamoveTo(0, 0)
            ..cLineTo(-40, 30)
            ..cLineTo(-40, -30)
            ..cLineTo(40, 30)
            ..cLineTo(40, -30)
            ..cLineTo(0, 0)
            ..cLineTo(30, 40)
            ..cLineTo(-30, 40)
            ..cLineTo(0, 0)
        ;

        canvas.drawPath(path.path(), paint);
        
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) => false;
}
