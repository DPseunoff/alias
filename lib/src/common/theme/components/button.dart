import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/colors.dart';
import '../common/shadows.dart';

class AppButtonThemeData extends ThemeExtension<AppButtonThemeData> {
  final Color buttonColor;
  final Color buttonAccentColor;
  final Color buttonTextColor;
  final Color buttonTextAccentColor;
  final Color buttonIconColor;
  final Color buttonIconAccentColor;
  final BoxShadow buttonShadow;
  final TextStyle buttonTextStyle;

  const AppButtonThemeData({
    required this.buttonColor,
    required this.buttonAccentColor,
    required this.buttonTextColor,
    required this.buttonTextAccentColor,
    required this.buttonIconColor,
    required this.buttonIconAccentColor,
    required this.buttonShadow,
    required this.buttonTextStyle,
  });

  static AppButtonThemeData of(BuildContext context) {
    return Theme.of(context).extension<AppButtonThemeData>()!;
  }

  static AppButtonThemeData get light => AppButtonThemeData(
        buttonColor: AppColors.systemLight,
        buttonAccentColor: AppColors.everWhite,
        buttonTextColor: AppColors.everWhite,
        buttonTextAccentColor: AppColors.everBlack,
        buttonIconColor: AppColors.everWhite,
        buttonIconAccentColor: AppColors.systemLight,
        buttonShadow: AppShadows.mainLight,
        buttonTextStyle: GoogleFonts.lato(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.5,
        ),
      );

  static AppButtonThemeData get dark => light;

  @override
  ThemeExtension<AppButtonThemeData> copyWith({
    Color? buttonColor,
    Color? buttonAccentColor,
    Color? buttonTextColor,
    Color? buttonTextAccentColor,
    Color? buttonIconColor,
    Color? buttonIconAccentColor,
    BoxShadow? buttonShadow,
    TextStyle? buttonTextStyle,
  }) =>
      AppButtonThemeData(
        buttonColor: buttonColor ?? this.buttonColor,
        buttonAccentColor: buttonAccentColor ?? this.buttonAccentColor,
        buttonTextColor: buttonTextColor ?? this.buttonTextColor,
        buttonTextAccentColor:
            buttonTextAccentColor ?? this.buttonTextAccentColor,
        buttonIconColor: buttonIconColor ?? this.buttonIconColor,
        buttonIconAccentColor:
            buttonIconAccentColor ?? this.buttonIconAccentColor,
        buttonShadow: buttonShadow ?? this.buttonShadow,
        buttonTextStyle: buttonTextStyle ?? this.buttonTextStyle,
      );

  @override
  ThemeExtension<AppButtonThemeData> lerp(
    ThemeExtension<AppButtonThemeData>? other,
    double t,
  ) {
    if (other is! AppButtonThemeData) {
      return this;
    }

    return AppButtonThemeData(
      buttonColor: Color.lerp(
        buttonColor,
        other.buttonColor,
        t,
      )!,
      buttonAccentColor: Color.lerp(
        buttonAccentColor,
        other.buttonAccentColor,
        t,
      )!,
      buttonTextColor: Color.lerp(
        buttonTextColor,
        other.buttonTextColor,
        t,
      )!,
      buttonTextAccentColor: Color.lerp(
        buttonTextAccentColor,
        other.buttonTextAccentColor,
        t,
      )!,
      buttonIconColor: Color.lerp(
        buttonIconColor,
        other.buttonIconColor,
        t,
      )!,
      buttonIconAccentColor: Color.lerp(
        buttonIconAccentColor,
        other.buttonIconAccentColor,
        t,
      )!,
      buttonShadow: BoxShadow.lerp(
        buttonShadow,
        other.buttonShadow,
        t,
      )!,
      buttonTextStyle: TextStyle.lerp(
        buttonTextStyle,
        other.buttonTextStyle,
        t,
      )!,
    );
  }
}
