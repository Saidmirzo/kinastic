// ignore_for_file: library_private_types_in_public_api

abstract class Assets {
  const Assets._();

  static _Icons get icons => const _Icons();

  static _Images get images => const _Images();
}

abstract class _AssetsFolder {
  final String basePath;

  const _AssetsFolder(this.basePath);
}

class _Icons extends _AssetsFolder {
  const _Icons() : super('assets/icons');

  String get coach => "$basePath/ic_coach.svg";

  String get explore => "$basePath/ic_explore.svg";

  String get home => "$basePath/ic_home.svg";

  String get insight => "$basePath/ic_insight.svg";

  String get profile => "$basePath/ic_profile.svg";

  String get search => "$basePath/ic_search.svg";

  String get notification => "$basePath/ic_notification.svg";

  String get backArrow => "$basePath/ic_back_arrow.svg";

  String get achievement => "$basePath/ic_achievement.svg";

  String get activity => "$basePath/ic_activity.svg";

  String get contact => "$basePath/ic_contact.svg";

  String get notif => "$basePath/ic_notif.svg";

  String get privacy => "$basePath/ic_privacy.svg";

  String get settings => "$basePath/ic_settings.svg";

  String get user => "$basePath/ic_user.svg";

  String get enter => "$basePath/ic_enter_arrow.svg";

  String get sett => "$basePath/ic_sett.svg";
}

class _Images extends _AssetsFolder {
  const _Images() : super('assets/images');

  String get activity => "$basePath/img_activity.png";

  String get food => "$basePath/img_food.png";

  String get meditate => "$basePath/img_meditate.png";

  String get user => "$basePath/img_user.png";

  String get workout1 => "$basePath/img_workout_1.png";

  String get workout2 => "$basePath/img_workout_2.png";

  String get notific1 => "$basePath/img_notific_1.png";

  String get notific2 => "$basePath/img_notific_2.png";

  String get notific3 => "$basePath/img_notific_3.png";

  String get notific4 => "$basePath/img_notific_4.png";

  String get foodBread => "$basePath/img_food_bread.svg";

  String get foodPancake => "$basePath/img_food_pancake.svg";

  String get sleep => "$basePath/img_sleep_moon.png";
}
