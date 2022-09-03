import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static PrimaryColor primaryColor = PrimaryColor();
  static SecondaryColor secondaryColor = SecondaryColor();
  static ThirdColor thirdColor = ThirdColor();
}

class PrimaryColor extends ColorSwatch<int> {
  PrimaryColor()
      : super(
          0xFF04004F,
          <int, Color>{
            100: const Color(0xFF04004F),
            75: const Color(0xFF363372),
            50: const Color(0xFF686695),
            25: const Color(0xFF9B99B9),
          },
        );

  Color get shade100 => this[100]!;
  Color get shade75 => this[75]!;
  Color get shade50 => this[50]!;
  Color get shade25 => this[25]!;
}

class SecondaryColor extends ColorSwatch<int> {
  SecondaryColor()
      : super(
          0xFF00916B,
          <int, Color>{
            100: const Color(0xFF00916B),
            75: const Color(0xFF33A789),
            50: const Color(0xFF66BDA6),
            25: const Color(0xFF99D3C4),
          },
        );

  Color get shade100 => this[100]!;
  Color get shade75 => this[75]!;
  Color get shade50 => this[50]!;
  Color get shade25 => this[25]!;
}

class ThirdColor extends ColorSwatch<int> {
  ThirdColor()
      : super(
          0xFF00DDA3,
          <int, Color>{
            100: const Color(0xFF00DDA3),
            75: const Color(0xFF45E4BA),
            50: const Color(0xFF66EBC8),
            25: const Color(0xFF99F1DA),
          },
        );

  Color get shade100 => this[100]!;
  Color get shade75 => this[75]!;
  Color get shade50 => this[50]!;
  Color get shade25 => this[25]!;
}
