import 'package:flutter/material.dart';
import 'package:shevtsov_promo_app/router/nav_drawer.dart';
import 'package:shevtsov_promo_app/router/page_map.dart';

class Router extends StatefulWidget {

    const Router({super.key});

    @override
    State<Router> createState() => _RouterState();
}


class _RouterState extends State<Router> {

    final Map<PageName, Function(BuildContext)> _pages = pageMap;
    PageName _currentPage = mainPage;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                title: const Text("Header"),
                leading: Builder(
                    builder: (context) => IconButton(
                        onPressed: () => Scaffold.of(context).openDrawer(),
                        icon: const Icon(Icons.menu),
                    ),
                )
            ),
            drawer: NavDrawer((p) => _setPage(p, context)),
            body: _pages[_currentPage]!(context)
        );
    }

    void _setPage(PageName name, BuildContext context) {
        setState(() {
            _currentPage = name;
        });
        Navigator.pop(context);
    }
}
