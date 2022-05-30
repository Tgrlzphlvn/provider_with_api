import 'package:flutter/material.dart';
import 'package:json_place_holder_sample/core/colors/colors.dart';

class DarkTheme with ProjectColors {
  late final ThemeData themeData;

  DarkTheme() {
    themeData = ThemeData(
      scaffoldBackgroundColor: iznikLake,
      appBarTheme: AppBarTheme(
        color: blackSea,
      ),
      textTheme: const TextTheme(
        headline5: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        subtitle1: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        subtitle2: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
