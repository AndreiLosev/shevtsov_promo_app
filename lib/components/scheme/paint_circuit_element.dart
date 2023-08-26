import 'package:flutter/cupertino.dart';

abstract class PaintCircuitEelement extends CustomPainter {
    final bool run;
    final double corner;
    final double size;
    final (double, double) shift;


    PaintCircuitEelement(this.run, {
        this.corner = 1, this.size = 0, this.shift = (70, 120),
    });
}
