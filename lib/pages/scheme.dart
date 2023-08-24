import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/components/scheme/pump.dart';

class Scheme extends StatelessWidget {
    
    const Scheme({super.key});

    @override
    Widget build(BuildContext context) {    // TODO: implement build
        return Container(
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
                        const Positioned(
                            top: 970,
                            left: 522,
                            child: Pump(),
                        ),
                    ],
                ),
            ),
        );
    }
}   
