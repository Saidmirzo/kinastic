import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kinastic/config/constants/app_decorations.dart';
import 'package:kinastic/config/constants/app_text_styles.dart';
import 'package:kinastic/config/constants/assets.dart';

import 'components/notification_container.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notification",
          style: AppTextStyles.h6,
        ),
        leading: GestureDetector(
          onTap: (() => Navigator.pop(context)),
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: AppDecorations.defDecor.copyWith(
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(
              Assets.icons.backArrow,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            NotificationContainer(
              imagePath: Assets.images.notific1,
              title: "Hey, it’s time for lunch",
              subTitle: "About 1 minutes ago",
            ),
            const Divider(
              color: Color(0xFFE5E5E5),
            ),
            NotificationContainer(
              imagePath: Assets.images.notific2,
              title: "Don’t miss your lowerbody workout",
              subTitle: "About 3 hours ago",
            ),
            const Divider(
              color: Color(0xFFE5E5E5),
            ),
            NotificationContainer(
              imagePath: Assets.images.notific3,
              title: "Congratulations, You have finished A..",
              subTitle: "10 Aug",
            ),
            const Divider(
              color: Color(0xFFE5E5E5),
            ),
            NotificationContainer(
              imagePath: Assets.images.notific4,
              title: "Hey, let’s add some meals for your b..",
              subTitle: "About 3 hours ago",
            ),
            const Divider(
              color: Color(0xFFE5E5E5),
            ),
            NotificationContainer(
              imagePath: Assets.images.notific3,
              title: "Hey, it’s time for lunch",
              subTitle: "28 Jul",
            ),
            const Divider(
              color: Color(0xFFE5E5E5),
            ),
            NotificationContainer(
              imagePath: Assets.images.notific2,
              title: "Ups, You have missed your Lowerbo...",
              subTitle: "27 Jul",
            ),
          ],
        ),
      ),
    );
  }
}
