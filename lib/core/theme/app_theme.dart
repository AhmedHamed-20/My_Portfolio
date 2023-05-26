import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../constants/app_font_size.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      secondary: AppColors.primaryColor,
      primary: AppColors.primaryColor,
      background: AppColors.lightBackgroundColor,
    ),
    splashColor: AppColors.primaryColor,
    dividerColor: AppColors.lightDividerColor,
    cardColor: AppColors.lightCardColor,
    primaryColor: AppColors.primaryColor,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
      modalBackgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.outfit(
        fontSize: AppFontSize.s26,
        fontWeight: FontWeight.w600,
        color: AppColors.lightTitleTextColor,
      ),
      titleLarge: GoogleFonts.outfit(
        color: AppColors.lightTitleTextColor,
        fontSize: AppFontSize.s30,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.outfit(
        color: AppColors.lightTitleTextColor,
        fontSize: AppFontSize.s18,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: GoogleFonts.robotoMono(
        color: AppColors.lightLabelTextColor,
        fontSize: AppFontSize.s16,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    useMaterial3: true,
  );
  static ThemeData dark = ThemeData(
    colorScheme: const ColorScheme.dark(
      secondary: AppColors.primaryColor,
      primary: AppColors.primaryColor,
      background: AppColors.darkBackgroundColor,
    ),
    cardColor: AppColors.darkCardColor,
    primaryColor: AppColors.primaryColor,
    dividerColor: AppColors.darkDividerColor,
    splashColor: AppColors.primaryColor,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
      modalBackgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.outfit(
        fontSize: AppFontSize.s26,
        fontWeight: FontWeight.w600,
        color: AppColors.darkTitleTextColor,
      ),
      titleLarge: GoogleFonts.outfit(
        color: AppColors.darkTitleTextColor,
        fontSize: AppFontSize.s30,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.outfit(
        color: AppColors.darkTitleTextColor,
        fontSize: AppFontSize.s18,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: GoogleFonts.robotoMono(
        color: AppColors.darkLabelTextColor,
        fontSize: AppFontSize.s16,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    useMaterial3: true,
  );
}
