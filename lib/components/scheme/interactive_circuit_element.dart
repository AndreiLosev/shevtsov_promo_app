import 'package:flutter/material.dart';

 class InteractiveCircuitElement extends StatelessWidget {

    final bool enalbed;
    final bool manual;
    final bool error;
    final CustomPainter Function(Color) child;
    final void Function() tapHandler;

    const InteractiveCircuitElement(
        this.child,
        this.tapHandler,
    {
        super.key,
        this.enalbed = false,
        this.manual = false,
        this.error = false,
    });

    @override
    Widget build(BuildContext context) => GestureDetector(
        onDoubleTap: tapHandler,
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
            ),
            padding: const EdgeInsets.all(5),
            width: 140,
            height: 200,
            child: CustomPaint(
                painter: child(_getColor()),
                child: Align(
                    alignment: Alignment.topCenter,
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
            ),
        ),
    );

    Color _getColor() => enalbed ? Colors.green : Colors.grey;

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
}
