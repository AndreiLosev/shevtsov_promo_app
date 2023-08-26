import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/interactive_circuit_element.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_pump.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_valve.dart';

class Scheme extends StatelessWidget {
    
    const Scheme({super.key});

    @override
    Widget build(BuildContext context) {    // TODO: implement build
        return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(double.infinity),
                maxScale: 100,
                minScale: 0.1,
                constrained: false,
                child: Stack(
                    children: [
                        Image.asset("assets/images/flutter_test.jpg",
                            fit: BoxFit.none,
                        ),
                        Positioned(
                            top: 900,
                            left: 448,
                            child: InteractiveCircuitElement(
                                (Color color) => PaintPump(color, pi, 1.3),
                                () { debugPrint("!  !  !"); },
                                enalbed: true,
                                error: true,
                                manual: false,
                            ),
                        ),
                        Positioned(
                            top: 590,
                            left: 857,
                            child: InteractiveCircuitElement(
                                (Color color) => PaintValve(color),
                                () { debugPrint("!  !  !"); },
                                enalbed: true,
                                error: false,
                                manual: false,
                            ),
                        ),
                        Positioned(
                            top: 338,
                            left: 880,
                            child: InteractiveCircuitElement(
                                (Color color) => PaintValve(color),
                                () { debugPrint("!  !  !"); },
                                enalbed: false,
                                error: false,
                                manual: true,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}   
