import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/interactive_circuit_element.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_3_valve.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_pump.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_smooth_valve.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_valve.dart';

class Scheme extends StatelessWidget {
    
    const Scheme({super.key});

    @override
    Widget build(BuildContext context) {    // TODO: implement build
        return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(500.0),
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
                                PaintPump(true, corner: pi, size: 1.3),
                                () { debugPrint("!  !  !"); },
                                error: true,
                                manual: false,
                            ),
                        ),
                        Positioned(
                            top: 590,
                            left: 857,
                            child: InteractiveCircuitElement(
                                PaintValve(true),
                                () { debugPrint("!  !  !"); },
                                error: false,
                                manual: false,
                            ),
                        ),
                        Positioned(
                            top: 338,
                            left: 880,
                            child: InteractiveCircuitElement(
                                PaintValve(false),
                                () { debugPrint("!  !  !"); },
                                error: false,
                                manual: true,
                            ),
                        ),
                        Positioned(
                            top: 220,
                            left: 120,
                            child: InteractiveCircuitElement(
                                Paint3Valve(true, corner: -pi/2, shift: (180, 60)),
                                () { debugPrint("!  !  !"); },
                                error: false,
                                manual: true,
                                positiobLeft: true,
                            ),
                        ),
                        Positioned(
                            top: 383,
                            left: 35,
                            child: InteractiveCircuitElement(
                                PaintSmoothValve(true, shift: (70, 190)),
                                () { debugPrint("!  !  !"); },
                                error: false,
                                manual: true,
                                value: 75.2,
                                useValue: true,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}   
