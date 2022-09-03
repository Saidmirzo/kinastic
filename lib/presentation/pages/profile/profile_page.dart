import 'package:flutter/material.dart';
import 'package:kinastic/config/constants/app_colors.dart';
import 'package:kinastic/presentation/pages/profile/components/settings_container.dart';

import '../../../config/constants/app_text_styles.dart';
import '../../../config/constants/assets.dart';
import 'components/each_settings_listtile.dart';
import 'components/user_data_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> accountWidgets = [
      EachSettingsListTile(
        iconPath: Assets.icons.user,
        title: "Personal Data",
      ),
      EachSettingsListTile(
        iconPath: Assets.icons.achievement,
        title: "Achievement",
      ),
      EachSettingsListTile(
        iconPath: Assets.icons.activity,
        title: "Activity History",
      )
    ];

    List<Widget> otherWidgets = [
      EachSettingsListTile(
        iconPath: Assets.icons.contact,
        title: "Contact Us",
      ),
      EachSettingsListTile(
        iconPath: Assets.icons.privacy,
        title: "Privacy Policy",
      ),
      EachSettingsListTile(
        iconPath: Assets.icons.settings,
        title: "Settings",
      )
    ];

    List<Widget> notificationWidgets = [
      EachSettingsListTile(
        iconPath: Assets.icons.notif,
        title: "Pop-up Notification",
      )
    ];

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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  UserDataContainer(
                    title: "193cm",
                    subtitle: "Height",
                  ),
                  const SizedBox(width: 10),
                  UserDataContainer(
                    title: "135kg",
                    subtitle: "Weight",
                  ),
                  const SizedBox(width: 10),
                  UserDataContainer(
                    title: "33yo",
                    subtitle: "Age",
                  ),
                ],
              ),
            ),
            SettingsContainer(title: "Account", widgets: accountWidgets),
            SettingsContainer(title: "Notification", widgets: notificationWidgets),
            SettingsContainer(title: "Other", widgets: otherWidgets),
          ],
        ),
      ),
    );
  }
}
