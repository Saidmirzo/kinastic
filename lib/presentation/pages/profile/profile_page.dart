import 'package:flutter/material.dart';
import 'package:kinastic/config/constants/app_colors.dart';

import '../../../config/constants/app_text_styles.dart';
import '../../../config/constants/assets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  child: Image.asset(Assets.images.user),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Arash Ranjbaran",
                        style: AppTextStyles.h4.copyWith(color: AppColors.primaryColor),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "awdesign.ar@gmail.com",
                        style: AppTextStyles.regular1.copyWith(color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(AppColors.thirdColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: (() {}),
                  child: Text(
                    "Edit",
                    style: AppTextStyles.medium1.copyWith(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
