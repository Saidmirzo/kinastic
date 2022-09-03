import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

abstract class AppDecorations {
  static BoxDecoration defDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: const Color(0xFFF7F8F8),
  );

  static InputDecoration inputDecoration = InputDecoration(
    border: InputBorder.none,
    hintText: 'Search...',
    hintStyle: AppTextStyles.regular1.copyWith(
      color: AppColors.metalColor.shade30,
    ),
  );
}
