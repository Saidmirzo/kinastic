import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class UserDataContainer extends StatelessWidget {
  UserDataContainer({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: AppDecorations.defDecor,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "$title\n",
            style: AppTextStyles.h4.copyWith(color: AppColors.thirdColor),
            children: [
              TextSpan(
                text: "\n$subtitle",
                style: AppTextStyles.regular1.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
