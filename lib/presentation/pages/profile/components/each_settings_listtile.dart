import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';

// ignore: must_be_immutable
class EachSettingsListTile extends StatefulWidget {
  EachSettingsListTile({
    required this.iconPath,
    required this.title,
    Key? key,
  }) : super(key: key);
  String iconPath;
  String title;

  @override
  State<EachSettingsListTile> createState() => _EachSettingsListTileState();
}

class _EachSettingsListTileState extends State<EachSettingsListTile> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 5,
      horizontalTitleGap: 10,
      visualDensity: const VisualDensity(vertical: -4),
      leading: SvgPicture.asset(widget.iconPath),
      title: Text(
        widget.title,
        style: AppTextStyles.regular1.copyWith(color: AppColors.primaryColor),
      ),
      trailing: widget.title == "Pop-up Notification"
          ? Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = !isSwitch;
                });
              })
          : SvgPicture.asset(Assets.icons.enter),
    );
  }
}
