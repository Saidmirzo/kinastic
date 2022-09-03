import 'package:flutter/material.dart';
import 'package:kinastic/config/constants/app_colors.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = "Montserrat";

  static TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 15,
    color: AppColors.thirdColor.shade100,
  );

  static TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    fontSize: 15,
    color: AppColors.primaryColor.shade100,
  );

  static TextStyle h3 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 17,
    color: AppColors.primaryColor.shade100,
  );

  static TextStyle h4 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: Colors.white,
  );

  static TextStyle regular1 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    color: Colors.white,
  );

  static TextStyle regular2 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    fontSize: 10,
    color: Color(0xFF989989),
  );

  static TextStyle medium1 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    color: Color(0xFF1D1617),
  );
}
