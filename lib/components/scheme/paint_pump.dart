import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/configurable_path.dart';


class PaintPump extends CustomPainter {

    final Color _color;
    final double _corner;
    final double _size;
    final (double, double) _shift = (65, 120);

    PaintPump(
        Color color,
    [
        double corner = 0.0,
        double size = 1.0,
    ]): 
        _color = color,
        _size = size,
        _corner = corner;

    @override
    void paint(Canvas canvas, Size size) {
        final paint = Paint()
            ..strokeWidth = 3
            ..color = _color
        ;

        final pathConfig = PathConfig(_corner, _size, _shift);

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

        canvas.drawCircle(Offset(_shift.$1, _shift.$2), 40 * _size, paint);
        
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) => false;
}