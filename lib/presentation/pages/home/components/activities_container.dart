import 'package:flutter/material.dart';

import '../../../../config/constants/app_decorations.dart';
import '../../../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class ActivitiesContainer extends StatefulWidget {
  ActivitiesContainer({
    required this.imagePath,
    required this.title,
    required this.eventTime,
    required this.switchValue,
    Key? key,
  }) : super(key: key);
  String imagePath;
  String title;
  String eventTime;
  bool switchValue;

  @override
  State<ActivitiesContainer> createState() => _ActivitiesContainerState();
}

class _ActivitiesContainerState extends State<ActivitiesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: AppDecorations.defDecor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(widget.imagePath, width: 50),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title, style: AppTextStyles.medium1),
              Text(widget.eventTime, style: AppTextStyles.regular2),
            ],
          ),
          const Spacer(),
          Switch(
            value: widget.switchValue,
            onChanged: ((value) {
              setState(() {
                widget.switchValue = !widget.switchValue;
              });
            }),
          )
        ],
      ),
    );
  }
}
