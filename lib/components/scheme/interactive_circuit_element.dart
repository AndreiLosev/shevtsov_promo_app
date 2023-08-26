import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/paint_circuit_element.dart';

 class InteractiveCircuitElement extends StatelessWidget {

    final bool manual;
    final bool error;
    final PaintCircuitEelement child;
    final void Function() tapHandler;
    final double value;
    final bool useValue;
    final bool positiobLeft;

    const InteractiveCircuitElement(
        this.child,
        this.tapHandler,
    {
        super.key,
        this.manual = false,
        this.error = false,
        this.value = 0,
        this.useValue = false,
        this.positiobLeft = false,
    });

    @override
    Widget build(BuildContext context) => GestureDetector(
        onDoubleTap: tapHandler,
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
            ),
            padding: const EdgeInsets.all(5),
            width:  positiobLeft ? 250 : 140,
            height: _containerSize(),
            child: CustomPaint(
                painter: child,
                child: Stack(
                    children: [
                        Align(
                            alignment: positiobLeft ? Alignment.topLeft : Alignment.topCenter,
                            child: Container(
                                height: 50,
                                width: 140,
                                alignment: Alignment.center,
                                color: _getTextColor(),
                                child: Text(
                                    _getText(),
                                    style: const TextStyle(fontSize: 35),
                                ),
                            ),
                        ),
                        Positioned(
                            top: 85,
                            child: useValue ? Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 50,
                                    width: 140,
                                    alignment: Alignment.center,
                                    child: Text(
                                        "$value%",
                                        style: const TextStyle(fontSize: 30),
                                    ),
                                ),
                            ) : const Text(""),
                        ),
                    ],
                ),
            ),
        ),
    );

    String _getText() {
        if (error) {
            return "Alarm";
        }

        if (manual) {
            return "Руч.";
        }

        return "Авто.";
    }

    Color _getTextColor() {
        if (error) {
            return Colors.red;
        }

        if (manual) {
            return Colors.orange;
        }

        return Colors.green;

    }

    double _containerSize() {
        if (positiobLeft) {
            return 140;
        }

        return useValue ? 240 : 200;
    }
}
