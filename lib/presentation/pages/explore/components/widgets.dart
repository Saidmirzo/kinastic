import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

class SearchExplore extends StatelessWidget {
  const SearchExplore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: AppDecorations.defDecor.copyWith(
        color: AppColors.metalColor.shade10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.icons.search),
          ),
          Expanded(
            child: TextField(
              cursorColor: AppColors.metalColor.shade100,
              decoration: AppDecorations.inputDecoration,
            ),
          ),
          Text(
            '|',
            style: AppTextStyles.regular2.copyWith(
              color: AppColors.metalColor.shade40,
              fontSize: 20,
            ),
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.icons.sett,
              color: AppColors.thirdColor.shade100,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ItemExplore extends StatelessWidget {
  ItemExplore({
    this.path,
    this.subTitle,
    this.title,
    Key? key,
  }) : super(key: key);
  String? path;
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.metalColor.shade10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin:const  EdgeInsets.only(right: 10),
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(path!),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: AppTextStyles.medium1,
                  ),
                  Text(
                    subTitle!,
                    style: AppTextStyles.regular2,
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 25,
              width: 25,
              decoration: AppDecorations.defDecor.copyWith(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.thirdColor.shade75,
              ),
              child: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: AppColors.metalColor.shade5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class NurationFods extends StatelessWidget {
  NurationFods({
    this.path,
    this.text1,
    this.text2,
    Key? key,
  }) : super(key: key);
  String? path;
  String? text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 164,
      decoration: AppDecorations.defDecor.copyWith(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.metalColor.shade10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          SvgPicture.asset(path!),
          Text(
            text1!,
            style: AppTextStyles.medium1
                .copyWith(color: AppColors.metalColor.shade100),
          ),
          Text(
            text2!,
            style: AppTextStyles.regular2
                .copyWith(color: AppColors.metalColor.shade40),
          )
        ],
      ),
    );
  }
}
