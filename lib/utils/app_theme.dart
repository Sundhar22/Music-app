import 'package:flutter/material.dart';
import 'package:music/utils/color.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.purple,
    scaffoldBackgroundColor: AppColor.white,
    fontFamily: 'SF_Pro_Rounded',
    colorScheme: const ColorScheme.light(),
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColor.purple,
    scaffoldBackgroundColor: AppColor.black1,
    fontFamily: 'SF_Pro_Rounded',
    textTheme: TextTheme(),
    colorScheme: const ColorScheme.dark(),
  );
}
