import 'package:flutter/material.dart';
import 'package:kinastic/config/constants/app_colors.dart';
import 'package:kinastic/config/constants/app_text_styles.dart';
import 'package:kinastic/config/constants/assets.dart';

import 'components/widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.metalColor.shade5,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SearchExplore(),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    textLine('Actives', 'See more'),
                    const SizedBox(
                      height: 10,
                    ),
                    ItemExplore(
                      path: Assets.images.workout1,
                      subTitle: 'Today, 03:00pm',
                      title: 'Fullbody WorkOut',
                    ),
                    ItemExplore(
                      path: Assets.images.workout2,
                      subTitle: 'June 05, 02:00pm',
                      title: 'Upperbody WorkOut',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textLine('Nutrition', 'See more'),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NurationFods(
                            path: Assets.images.foodBread,
                            text1: 'Honey Pancake',
                            text2: 'Easy |30mins | 180cal'),
                        NurationFods(
                            path: Assets.images.foodBread,
                            text1: 'Honey Pancake',
                            text2: 'Easy |30mins | 180cal'),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textLine('Mindfulness', 'See more'),
                    const SizedBox(
                      height: 15,
                    ),
                    ItemExplore(
                      path: Assets.images.meditate,
                      subTitle: 'Today, 03:00pm',
                      title: 'Meditation',
                    ),
                    ItemExplore(
                      path: Assets.images.sleep,
                      subTitle: 'Today, 03:00pm',
                      title: 'Sleep well',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row textLine(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppTextStyles.h3,
        ),
        Text(
          text2,
          style: AppTextStyles.medium1.copyWith(
            color: AppColors.metalColor.shade40,
          ),
        ),
      ],
    );
  }
}
