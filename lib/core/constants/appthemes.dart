import 'package:flutter/material.dart';

import '../utils/responsive.dart';
import 'appcolors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    // Enable Material 3
    scaffoldBackgroundColor: Color(0xffF7F7F7),
    cardColor: Colors.white,
    fontFamily: 'NotoSerif',
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.secondary,
      selectionColor: AppColors.secondary.withValues(alpha: 0.3),
      selectionHandleColor: AppColors.secondary,
    ),

    //  dividerColor: AppColors.divider,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: SizeConfig.font(16),
        fontWeight: FontWeight.w500,
        color: AppColors.heading,
      ),
      headlineLarge: TextStyle(
        fontSize: SizeConfig.font(24),
        fontWeight: FontWeight.w600,
        color: AppColors.secondary,
      ),
      bodySmall: TextStyle(
        fontSize: SizeConfig.font(16),
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.secondary,
      ),

      // bodyLarge: TextStyle(fontSize: 26,fontWeight: FontWeight.w700,color:Colors.black),
      //titleLarge: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w600,color: Colors.black ),
      titleMedium: TextStyle(
        fontSize: SizeConfig.font(11),
        fontWeight: FontWeight.w500,
        color: AppColors.secondary,
      ),
      titleSmall: TextStyle(
        color: AppColors.heading,
        fontSize: SizeConfig.font(20),
        fontWeight: FontWeight.w600,
      ),
      labelSmall: TextStyle(
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w500,
        color: AppColors.greyHeading,
      ),
      labelMedium: TextStyle(
        fontSize: SizeConfig.font(16),
        fontWeight: FontWeight.w600,
        color: AppColors.greyHeading,
      ),
      labelLarge: TextStyle(
        fontSize: SizeConfig.font(16),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onPrimaryContainer: AppColors.unsel,
      onPrimary: AppColors.white,
      onTertiaryContainer: AppColors.white,

      // secondary: bluishMedium,
      onSecondary: AppColors.secondary,
      // error: errorColor,
      tertiary: AppColors.black,
      onTertiary: AppColors.heading,
    ),
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'NotoSerif',
    scaffoldBackgroundColor: Color(0xFF161616),
    // Dark grayish background
    cardColor: Color(0xFF2C2C2E),
    // Dark card color
    dividerColor: AppColors.white,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.secondary,
      selectionColor: AppColors.secondary.withValues(alpha: 0.3),
      selectionHandleColor: AppColors.secondary,
    ),

    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: SizeConfig.font(16),
        fontWeight: FontWeight.w500,
        color: AppColors.headingWhite,
      ),
      headlineLarge: TextStyle(
        fontSize: SizeConfig.font(24),
        fontWeight: FontWeight.w600,
        color: AppColors.secondary,
      ),
      bodySmall: TextStyle(
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w400,
        color: AppColors.headingWhite,
      ),
      bodyLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),
      // titleLarge: TextStyle( fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
      titleMedium: TextStyle(
        fontSize: SizeConfig.font(11),
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      titleSmall: TextStyle(
        color: AppColors.headingWhite,
        fontSize: SizeConfig.font(20),
        fontWeight: FontWeight.w600,
      ),
      labelSmall: TextStyle(
        fontSize: SizeConfig.font(12),
        fontWeight: FontWeight.w500,
        color: Color(0xFFCCCCCC),
      ),
      //  labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
      labelMedium: TextStyle(
        fontSize: SizeConfig.font(16),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),

      labelLarge: TextStyle(
        fontSize: SizeConfig.font(16),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),
    ),

    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onPrimaryContainer: AppColors.white,
      onPrimary: Color(0xff2B2A2A),

      // onPrimary: AppColors.visibility,
      // secondary: bluishMedium,
      onSecondary: AppColors.white,
      // error: errorColor,
      tertiary: AppColors.white,
      onTertiary: AppColors.white,
      onTertiaryContainer: AppColors.darkDetail,
    ),

    brightness: Brightness.dark,
  );
}
