import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kinastic/config/constants/app_decorations.dart';
import 'package:kinastic/config/constants/app_text_styles.dart';
import 'package:kinastic/config/constants/assets.dart';

import 'components/activities_container.dart';
import 'components/plan_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Welcome Back Arash",
                          style: AppTextStyles.h1,
                        ),
                        Text(
                          "how are you feeling today?",
                          style: AppTextStyles.h2,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 40,
                    height: 40,
                    decoration: AppDecorations.defDecor,
                    child: SvgPicture.asset(
                      Assets.icons.notification,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: CupertinoTextField(
                  padding: const EdgeInsets.all(15),
                  prefix: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      Assets.icons.search,
                      height: 20,
                    ),
                  ),
                  decoration: AppDecorations.defDecor,
                  placeholder: "Search...",
                  style: AppTextStyles.h2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Today's Plan",
                  style: AppTextStyles.h3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PlanContainer(
                    title: "Activity",
                    subTitle: "30 minutes",
                    imagePath: Assets.images.activity,
                  ),
                  const SizedBox(width: 15),
                  PlanContainer(
                    title: "Meditate",
                    subTitle: "15 minutes",
                    imagePath: Assets.images.meditate,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PlanContainer(
                    title: "Food",
                    subTitle: "2 recipes",
                    imagePath: Assets.images.food,
                  ),
                  const SizedBox(width: 15),
                  PlanContainer(
                    title: "Meditate",
                    subTitle: "15 minutes",
                    imagePath: Assets.images.food,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming activities",
                      style: AppTextStyles.h3,
                    ),
                    Text(
                      "See more",
                      style: AppTextStyles.regular1.copyWith(
                        color: const Color(0xFF989889),
                      ),
                    ),
                  ],
                ),
              ),
              ActivitiesContainer(
                imagePath: Assets.images.workout1,
                title: "Fullbody Workout",
                eventTime: "Today, 03:00pm",
                switchValue: true,
              ),
              ActivitiesContainer(
                imagePath: Assets.images.workout2,
                title: "Upperbody Workout",
                eventTime: "August 15, 02:00pm",
                switchValue: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
