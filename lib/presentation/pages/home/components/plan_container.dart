import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class PlanContainer extends StatelessWidget {
  PlanContainer({
    required this.title,
    required this.subTitle,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  String title;
  String subTitle;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: AppDecorations.defDecor.copyWith(
          color: AppColors.primaryColor.shade100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.h4,
                ),
                Text(
                  subTitle,
                  style: AppTextStyles.regular1,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                imagePath,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
