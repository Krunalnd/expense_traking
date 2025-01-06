import 'package:expense_traking/widget/expenses.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

var kColorsScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(225, 96, 59, 181),
);

var kDarkColorsScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: buildDarkThemeData(),
      theme: buildThemeData(),
      themeMode: ThemeMode.system,
      home: Expenses(),
    );
  }

  ThemeData buildDarkThemeData() => ThemeData.dark().copyWith(
        colorScheme: kDarkColorsScheme,
        cardTheme: CardTheme().copyWith(
          color: kDarkColorsScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorsScheme.primaryContainer),
        ),
      );

  ThemeData buildThemeData() => ThemeData().copyWith(
        colorScheme: kColorsScheme,
        appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorsScheme.onPrimaryContainer,
            foregroundColor: kColorsScheme.primaryContainer),
        cardTheme: CardTheme().copyWith(
          color: kColorsScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorsScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kColorsScheme.onSecondaryContainer,
              ),
            ),
      );
}
