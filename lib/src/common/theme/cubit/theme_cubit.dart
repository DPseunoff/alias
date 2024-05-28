import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/colors.dart';
import '../components/button.dart';
import '../components/header_footer.dart';

class ThemeCubit extends Cubit<ThemeData> {
  static final _light = _createLightTheme();

  static final _dark = ThemeData.dark();

  ThemeCubit() : super(_light);

  void toggleTheme() {
    final nextState = state.brightness == Brightness.light ? _dark : _light;
    emit(nextState);
  }

  static ThemeData _createLightTheme() => ThemeData(
        brightness: Brightness.light,
        checkboxTheme: const CheckboxThemeData(
          fillColor: MaterialStatePropertyAll(
            AppColors.systemLight,
          ),
          checkColor: MaterialStatePropertyAll(
            AppColors.everWhite,
          ),
          overlayColor: MaterialStatePropertyAll(
            AppColors.grey,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: AppColors.systemLight,
          secondary: AppColors.everWhite,
          background: AppColors.backgroundLight,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
            color: AppColors.everBlack,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.lato(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
            height: (28 / 32),
            color: AppColors.everBlack,
          ),
          titleMedium: GoogleFonts.lato(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
            height: (24 / 24),
            color: AppColors.everBlack,
          ),
          titleSmall: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
            height: (21 / 20),
            color: AppColors.everBlack,
          ),
          bodyMedium: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
            height: (12 / 16),
            color: AppColors.everBlack,
          ),
          bodySmall: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
            color: AppColors.everBlack,
          ),
          labelSmall: GoogleFonts.lato(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
            color: AppColors.everBlack,
          ),
        ),
        extensions: [
          AppButtonThemeData.light,
          AppHeaderFooterThemeData.light,
        ],
      );
}
