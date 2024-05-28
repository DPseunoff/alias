import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/colors.dart';
import '../common/shadows.dart';

class AppHeaderFooterThemeData
    extends ThemeExtension<AppHeaderFooterThemeData> {
  final Color backgroundColor;
  final BoxShadow headerShadow;
  final BoxShadow footerShadow;
  final TextStyle headerTitleStyle;
  final TextStyle headerSubtitleStyle;

  const AppHeaderFooterThemeData({
    required this.backgroundColor,
    required this.headerShadow,
    required this.footerShadow,
    required this.headerTitleStyle,
    required this.headerSubtitleStyle,
  });

  static AppHeaderFooterThemeData of(BuildContext context) {
    return Theme.of(context).extension<AppHeaderFooterThemeData>()!;
  }

  static AppHeaderFooterThemeData get light => AppHeaderFooterThemeData(
        backgroundColor: AppColors.everWhite,
        headerShadow: AppShadows.headerLight,
        footerShadow: AppShadows.footerLight,
        headerTitleStyle: GoogleFonts.lato(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.5,
          color: AppColors.everBlack,
        ),
        headerSubtitleStyle: GoogleFonts.lato(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.5,
          color: AppColors.minorLight,
        ),
      );

  static AppHeaderFooterThemeData get dark => light;

  @override
  ThemeExtension<AppHeaderFooterThemeData> copyWith({
    Color? backgroundColor,
    BoxShadow? headerShadow,
    BoxShadow? footerShadow,
    TextStyle? headerTitleStyle,
    TextStyle? headerSubtitleStyle,
  }) =>
      AppHeaderFooterThemeData(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        headerShadow: headerShadow ?? this.headerShadow,
        footerShadow: footerShadow ?? this.footerShadow,
        headerTitleStyle: headerTitleStyle ?? this.headerTitleStyle,
        headerSubtitleStyle: headerSubtitleStyle ?? this.headerSubtitleStyle,
      );

  @override
  ThemeExtension<AppHeaderFooterThemeData> lerp(
    ThemeExtension<AppHeaderFooterThemeData>? other,
    double t,
  ) {
    if (other is! AppHeaderFooterThemeData) {
      return this;
    }

    return AppHeaderFooterThemeData(
      backgroundColor: Color.lerp(
        backgroundColor,
        other.backgroundColor,
        t,
      )!,
      headerShadow: BoxShadow.lerp(
        headerShadow,
        other.headerShadow,
        t,
      )!,
      footerShadow: BoxShadow.lerp(
        footerShadow,
        other.footerShadow,
        t,
      )!,
      headerTitleStyle: TextStyle.lerp(
        headerTitleStyle,
        other.headerTitleStyle,
        t,
      )!,
      headerSubtitleStyle: TextStyle.lerp(
        headerSubtitleStyle,
        other.headerSubtitleStyle,
        t,
      )!,
    );
  }
}
