import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static PrimaryColor primaryColor = PrimaryColor();
  static SecondaryColor secondaryColor = SecondaryColor();
  static ThirdColor thirdColor = ThirdColor();
  static MetalColor metalColor = MetalColor();

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
class MetalColor extends ColorSwatch<int> {
  MetalColor()
      : super(
          0xff111827,
          <int, Color>{
            100: const Color(0xff111827),
            70: const Color(0xff111827).withOpacity(.7),
            50: const Color(0xff6B7280),
            40: const Color(0xff9CA3B0),
            30: const Color(0xffD1D5DB),
            10: const Color(0xffF7F8F8),
            5:const Color(0xffFFFFFF),
          },
        );

  Color get shade100 => this[100]!;
  Color get shade70 => this[70]!;
  Color get shade50 => this[50]!;
  Color get shade40 => this[40]!;
  Color get shade30 => this[30]!;
  Color get shade10 => this[10]!;
  Color get shade5 => this[5]!;
}
