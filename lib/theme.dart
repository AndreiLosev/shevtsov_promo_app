import 'package:flutter/material.dart';

final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
    useMaterial3: true,
    textTheme: const TextTheme(
        displaySmall: TextStyle(fontSize: 35, backgroundColor: Colors.green),
        displayMedium: TextStyle(fontSize: 35, backgroundColor: Colors.orange),
        displayLarge: TextStyle(fontSize: 35, backgroundColor: Colors.red),
        bodySmall: TextStyle(fontSize: 22, backgroundColor: Colors.grey),
    )
);
