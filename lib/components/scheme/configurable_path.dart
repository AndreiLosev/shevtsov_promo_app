import 'dart:math';

import 'package:flutter/material.dart';


class ConfigurablePath extends Path {
    
    void cMamoveTo(double x, double y, [double corner = 0, double size = 1]) {
        final (x1, y1) = _turner(x * size, y * size, corner);
        moveTo(x1, y1);
    }

    void cLineTo(double x, double y, [double corner = 0, double size = 1]) {
        final (x1, y1) = _turner(x * size, y * size, corner);
        lineTo(x1, y1);
    }


    (double, double) _turner(double x, double y, [double corner = 0]) {
        final x1 = x * cos(corner) - y * sin(corner);
        final y1 = x * sin(corner) + y * cos(corner);

        return (x1, y1);
    }
}

