import 'dart:math';

import 'package:flutter/material.dart';


class ConfigurablePath {

    final PathConfig _config;
    final Path _path = Path();

    ConfigurablePath(PathConfig config): _config = config;
    
    void cMamoveTo(double x, double y) {
        final (x1, y1) = _turner(
            x * _config.size,
            y * _config.size,
            _config.corner
        );
        _path.moveTo(x1 + _config.shift.$1, y1 +  _config.shift.$2);
    }

    void cLineTo(double x, double y) {
        final (x1, y1) = _turner(
            x * _config.size,
            y * _config.size,
            _config.corner
        );
        _path.lineTo(x1 + _config.shift.$1, y1 +  _config.shift.$2);
    }

    Path path() => _path;


    (double, double) _turner(double x, double y, [double corner = 0]) {
        final x1 = x * cos(corner) - y * sin(corner);
        final y1 = x * sin(corner) + y * cos(corner);

        return (x1, y1);
    }
}

class PathConfig {
    final double corner;
    final double size;
    final (double, double) shift;

    const PathConfig([
        this.corner = 0.0,
        this.size = 1.0,
        (double, double)? shift1,
    ]): shift = shift1 ?? (0, 0);
}
