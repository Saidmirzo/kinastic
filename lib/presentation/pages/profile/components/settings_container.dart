import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class SettingsContainer extends StatelessWidget {
  SettingsContainer({
    required this.title,
    required this.widgets,
    Key? key,
  }) : super(key: key);
  String title;
  List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    widgets.insert(
      0,
      Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          title,
          style: AppTextStyles.h6.copyWith(color: AppColors.primaryColor),
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
      decoration: AppDecorations.defDecor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }
}
