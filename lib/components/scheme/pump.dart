import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/configurable_path.dart';

class Pump extends StatelessWidget {

    const Pump({super.key});

    @override
    Widget build(BuildContext context) => CustomPaint(
        painter: PaintPump(Colors.green, pi, 1.3),
        child: Container(
            padding: EdgeInsets.only(left: 50, top: 10),
            // color: Colors.deepOrangeAccent,
            child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(4),
                child: const Text(
                    "Авто",
                    style: TextStyle(fontSize: 35),
                ),
            ),
        ),
    );
}

class PaintPump extends CustomPainter {

    final Color _color;
    final double _corner;
    final double _size;

    PaintPump(
        Color color,
    [
        corner = 0,
        size = 1,
    ]): 
        _color = color,
        _size = size,
        _corner = corner
    ;

    @override
    void paint(Canvas canvas, Size size) {
        final paint = Paint()
            ..strokeWidth = 3
            ..color = _color
        ;

        final path = ConfigurablePath()
            ..cMamoveTo(-20, -35, _corner, _size)
            ..cLineTo(-20, 35, _corner, _size)
            ..cLineTo(40, 0, _corner, _size)
            ..cLineTo(-20, -35, _corner, _size);

        canvas.drawPath(path, paint);

        _paintStatic(canvas);
    }

    void _paintStatic(Canvas canvas) {
        final paint = Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 3
            ..color = Colors.black
        ;

        canvas.drawCircle(const Offset(0, 0), 40 * _size, paint);
        
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) => false;
}
