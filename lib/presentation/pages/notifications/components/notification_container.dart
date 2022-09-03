import 'package:flutter/material.dart';

import '../../../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class NotificationContainer extends StatelessWidget {
  NotificationContainer({
    required this.imagePath,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);
  String imagePath;
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.medium1),
                const SizedBox(height: 5),
                Text(subTitle, style: AppTextStyles.regular2),
              ],
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            color: Color(0xFFADA4A5),
          )
        ],
      ),
    );
  }
}
