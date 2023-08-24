import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/router/page_map.dart';

class NavDrawer extends StatelessWidget {

    final Function(PageName) _setPage;

    const NavDrawer(Function(PageName) setPage, {super.key}): _setPage = setPage;

    @override
    Widget build(BuildContext context) {
        return Drawer(
                child: ListView(
                    children: [
                        TextButton(
                            onPressed: () => _setPage(PageName.sheme),
                            child: const Text("Sheme"),
                        ),
                        TextButton(
                            onPressed: () => _setPage(PageName.settings),
                            child: const Text("Settings"),
                        ),
                        TextButton(
                            onPressed: () => _setPage(PageName.alarms),
                            child: const Text("Alarms"),
                        ),
                    ],
                ),
            );
    }
}
