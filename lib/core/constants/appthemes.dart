import 'package:flutter/material.dart';

import '../utils/responsive.dart';
import 'appcolors.dart';

class AppTheme {
  // ============================================================
  // LIGHT THEME
  // ============================================================

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // Mehfil uses Noto Sans as the default UI font.
    fontFamily: 'NotoSerif',

    scaffoldBackgroundColor: AppColors.background,
    cardColor: AppColors.card,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.white,

      secondary: AppColors.secondary,
      onSecondary: AppColors.white,

      tertiary: AppColors.accent,
      onTertiary: AppColors.heading,

      surface: AppColors.card,
      onSurface: AppColors.text,

      error: AppColors.error,
      onError: AppColors.white,
    ),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primary,
      selectionColor: AppColors.primary.withValues(alpha: 0.20),
      selectionHandleColor: AppColors.primary,
    ),

    dividerColor: AppColors.divider,

    // ============================================================
    // TYPOGRAPHY
    // ============================================================

    textTheme: TextTheme(

      // Display / H1
      // Noto Serif | 600/700 | 24px
      headlineLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(24),
        fontWeight: FontWeight.w700,
        color: AppColors.heading,
      ),

      // Heading / H2
      // Noto Serif | 600 | 18px
      headlineMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(18),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),

      // H3 / Group headers
      // Noto Sans | 600 | 14px
      headlineSmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),

      // Body Regular
      // Noto Sans | 400 | 13px
      bodyLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w400,
        color: AppColors.text,
      ),

      // Body Medium
      // Noto Sans | 500 | 13px
      bodyMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w500,
        color: AppColors.text,
      ),

      // Small body / secondary descriptions
      bodySmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(12),
        fontWeight: FontWeight.w400,
        color: AppColors.subText,
      ),

      // Button / Action
      // Noto Sans | 600 | 14px
      labelLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),

      // Group labels
      // Noto Sans | 600 | 14px
      labelMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),

      // Caption / Badge
      // Noto Sans | 500 | 10px
      labelSmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(10),
        fontWeight: FontWeight.w500,
        color: AppColors.subText,
      ),

      // Input / list titles
      titleMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w500,
        color: AppColors.text,
      ),

      // Card / section title
      titleLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(18),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),

      // Small title
      titleSmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),
    ),

    // ============================================================
    // APP BAR
    // ============================================================

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.heading,
      elevation: 0,
      centerTitle: false,

      titleTextStyle: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(18),
        fontWeight: FontWeight.w600,
        color: AppColors.heading,
      ),

      iconTheme: const IconThemeData(
        color: AppColors.heading,
      ),
    ),

    // ============================================================
    // CARDS
    // ============================================================

    cardTheme: CardThemeData(
      color: AppColors.card,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(
          color: AppColors.border,
          width: 1,
        ),
      ),
    ),

    // ============================================================
    // INPUT FIELDS
    // ============================================================

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.card,

      hintStyle: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w400,
        color: AppColors.subText,
      ),

      labelStyle: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w500,
        color: AppColors.subText,
      ),

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.error,
        ),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.error,
          width: 1.5,
        ),
      ),
    ),

    // ============================================================
    // DIVIDERS
    // ============================================================

    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 1,
      space: 1,
    ),

    // ============================================================
    // ICONS
    // ============================================================

    iconTheme: const IconThemeData(
      color: AppColors.heading,
      size: 22,
    ),

    // ============================================================
    // BUTTONS
    // ============================================================

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
        minimumSize: const Size(double.infinity, 48),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        textStyle: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: SizeConfig.font(14),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        minimumSize: const Size(double.infinity, 48),

        side: const BorderSide(
          color: AppColors.primary,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        textStyle: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: SizeConfig.font(14),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,

        textStyle: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: SizeConfig.font(14),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ============================================================
    // BOTTOM NAVIGATION
    // ============================================================

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.card,
      indicatorColor: AppColors.softPrimary,

      iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(
              color: AppColors.primary,
            );
          }

          return const IconThemeData(
            color: AppColors.unselected,
          );
        },
      ),

      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontFamily: 'NotoSerif',
              fontSize: SizeConfig.font(10),
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            );
          }

          return TextStyle(
            fontFamily: 'NotoSerif',
            fontSize: SizeConfig.font(10),
            fontWeight: FontWeight.w500,
            color: AppColors.unselected,
          );
        },
      ),
    ),

    // ============================================================
    // CHECKBOX
    // ============================================================

    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),

      fillColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return AppColors.white;
        },
      ),

      side: const BorderSide(
        color: AppColors.border,
      ),
    ),

    // ============================================================
    // SWITCH
    // ============================================================

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.white;
          }
          return AppColors.subText;
        },
      ),
      trackColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return AppColors.border;
        },
      ),
    ),
  );

  // ==============================================================
  // DARK THEME
  // ==============================================================

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    fontFamily: 'NotoSerif',

    scaffoldBackgroundColor: AppColors.darkDetail,
    cardColor: AppColors.darkDialogueBg,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      onPrimary: AppColors.white,
//
      secondary: AppColors.secondary,
      onSecondary: AppColors.white,

      tertiary: AppColors.accent,
      onTertiary: AppColors.black,

      surface: AppColors.darkDialogueBg,
      onSurface: AppColors.headingWhite,

      error: AppColors.error,
      onError: AppColors.white,
    ),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.secondary,
      selectionColor: AppColors.secondary.withValues(alpha: 0.25),
      selectionHandleColor: AppColors.secondary,
    ),

    dividerColor: const Color(0xFF403840),

    // ============================================================
    // DARK TYPOGRAPHY
    // ============================================================

    textTheme: TextTheme(
      // H1
      headlineLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(24),
        fontWeight: FontWeight.w700,
        color: AppColors.headingWhite,
      ),

      // H2
      headlineMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(18),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),

      // H3
      headlineSmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),

      // Body Regular
      bodyLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w400,
        color: AppColors.headingWhite,
      ),

      // Body Medium
      bodyMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w500,
        color: AppColors.headingWhite,
      ),

      // Body Small
      bodySmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(12),
        fontWeight: FontWeight.w400,
        color: const Color(0xFFC5BBC4),
      ),

      // Button
      labelLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),

      // H3 / labels
      labelMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),

      // Caption
      labelSmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(10),
        fontWeight: FontWeight.w500,
        color: const Color(0xFFB4AAB3),
      ),

      titleMedium: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w500,
        color: AppColors.headingWhite,
      ),

      titleLarge: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(18),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),

      titleSmall: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(14),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),
    ),

    // ============================================================
    // DARK APP BAR
    // ============================================================

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkDetail,
      foregroundColor: AppColors.headingWhite,
      elevation: 0,

      titleTextStyle: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(18),
        fontWeight: FontWeight.w600,
        color: AppColors.headingWhite,
      ),

      iconTheme: const IconThemeData(
        color: AppColors.headingWhite,
      ),
    ),

    // ============================================================
    // DARK CARDS
    // ============================================================

    cardTheme: CardThemeData(
      color: AppColors.darkDialogueBg,
      elevation: 0,
      margin: EdgeInsets.zero,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(
          color: Color(0xFF403840),
          width: 1,
        ),
      ),
    ),

    // ============================================================
    // DARK INPUTS
    // ============================================================

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkDialogueBg,

      hintStyle: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w400,
        color: const Color(0xFF9F959E),
      ),

      labelStyle: TextStyle(
        fontFamily: 'NotoSerif',
        fontSize: SizeConfig.font(13),
        fontWeight: FontWeight.w500,
        color: const Color(0xFFB4AAB3),
      ),

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xFF403840),
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xFF403840),
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.secondary,
          width: 1.5,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.error,
        ),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.error,
          width: 1.5,
        ),
      ),
    ),

    // ============================================================
    // DARK DIVIDERS
    // ============================================================

    dividerTheme: const DividerThemeData(
      color: Color(0xFF403840),
      thickness: 1,
      space: 1,
    ),

    // ============================================================
    // DARK ICONS
    // ============================================================

    iconTheme: const IconThemeData(
      color: AppColors.headingWhite,
      size: 22,
    ),

    // ============================================================
    // DARK BUTTONS
    // ============================================================

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
        minimumSize: const Size(double.infinity, 48),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        textStyle: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: SizeConfig.font(14),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.secondary,
        minimumSize: const Size(double.infinity, 48),

        side: const BorderSide(
          color: AppColors.secondary,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        textStyle: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: SizeConfig.font(14),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.secondary,

        textStyle: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: SizeConfig.font(14),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ============================================================
    // DARK BOTTOM NAVIGATION
    // ============================================================

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.darkDialogueBg,
      indicatorColor: AppColors.primaryDark,

      iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(
              color: AppColors.white,
            );
          }

          return const IconThemeData(
            color: Color(0xFF9F959E),
          );
        },
      ),

      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontFamily: 'NotoSerif',
              fontSize: SizeConfig.font(10),
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            );
          }

          return TextStyle(
            fontFamily: 'NotoSerif',
            fontSize: SizeConfig.font(10),
            fontWeight: FontWeight.w500,
            color: const Color(0xFF9F959E),
          );
        },
      ),
    ),

    // ============================================================
    // DARK CHECKBOX
    // ============================================================

    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),

      fillColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return AppColors.darkDialogueBg;
        },
      ),

      side: const BorderSide(
        color: Color(0xFF5A5059),
      ),
    ),

    // ============================================================
    // DARK SWITCH
    // ============================================================

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.white;
          }
          return const Color(0xFF9F959E);
        },
      ),

      trackColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return const Color(0xFF403840);
        },
      ),
    ),
  );
}