import 'package:flutter/widgets.dart';
import 'package:shevtsov_promo_app/pages/alarms.dart';
import 'package:shevtsov_promo_app/pages/scheme.dart';
import 'package:shevtsov_promo_app/pages/settings.dart';

enum PageName {
    sheme,
    settings,
    alarms,
}

const mainPage = PageName.sheme;

final pageMap = {
    PageName.sheme: (BuildContext context) => const Scheme(),
    PageName.alarms: (BuildContext context) => const Alarms(),
    PageName.settings: (BuildContext context) => const Settings(),
};
