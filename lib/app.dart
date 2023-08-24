import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/pages/alarms.dart';
import 'package:shevtsov_promo_app/pages/scheme.dart';
import 'package:shevtsov_promo_app/pages/settings.dart';
import 'package:shevtsov_promo_app/router/router.dart' as local;
import 'theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: theme,
        home: const local.Router(),
        routes: {
            'sc1': (c) => const Scheme(),
            'sc2': (c) => const Alarms(),
            'sc3': (c) => const Settings(),
        },
    );
  }
}
