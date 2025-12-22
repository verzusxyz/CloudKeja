import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '_app_colors.dart';

abstract class DAppTheme {
  static final _baseLight = ThemeData.light();
  static final kLightTheme = _baseLight.copyWith(
    appBarTheme: _appBarTheme,
    textTheme: _textTheme(_baseLight.textTheme),
    scaffoldBackgroundColor: DAppColors.kPrimary,
    colorScheme: const ColorScheme.light(
      surface: DAppColors.kSurfaceLight,
      onSurface: DAppColors.kOnSurfaceLight,

      //
      primary: DAppColors.kPrimary,
      onPrimary: DAppColors.kOnPrimary,

      //
      secondary: DAppColors.kSecondary,
      onSecondary: DAppColors.kOnSecondary,

      //
      primaryContainer: DAppColors.kPrimaryContainerLight,
      onPrimaryContainer: DAppColors.kOnPrimaryContainerLight,

      outline: DAppColors.kBorder,
    ),

    // Buttons
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme,
    floatingActionButtonTheme: floatingActionButtonThemeData,

    checkboxTheme: _checkboxTheme(),
    radioTheme: _radioThemeData,

    // Input Decoration
    inputDecorationTheme: _inputDecorationTheme(DAppColors.kBorder),

    // Tabbar Theme
    tabBarTheme: _tabBarTheme(
      dividerColor: DAppColors.kBorder.withValues(alpha: 0.20),
    ),

    // Divider Theme
    dividerTheme: _dividerTheme(DAppColors.kBorder.withValues(alpha: 0.25)),
    extensions: [
      SkeletonizerConfigData(
        effect: const ShimmerEffect(),
        containersColor: DAppColors.kSecondary.withValues(alpha: 0.25),
        enableSwitchAnimation: true,
      )
    ],
  );

  // static final _baseDark = ThemeData.dark();
  static final kDarkTheme = _baseLight;

  // Common AppBar Theme
  static const _appBarTheme = AppBarTheme(
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: DAppColors.kPrimary,
    foregroundColor: DAppColors.kOnPrimary,
  );

  // Common Text Theme
  static TextTheme _textTheme([TextTheme? baseTheme]) {
    return GoogleFonts.latoTextTheme(baseTheme);
  }

  // Common Elevated Button Theme
  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: DAppColors.kOnPrimary,
      backgroundColor: DAppColors.kPrimary,
      textStyle: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    ),
  );

  // Common Elevated Button Theme
  static final _outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: DAppColors.kPrimary),
      textStyle: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
  );

  // Common Checkbox Theme
  static CheckboxThemeData _checkboxTheme([
    Color borderColor = const Color(0xFF000000),
  ]) {
    return CheckboxThemeData(
      side: BorderSide(color: borderColor),
    );
  }

  // Common Radio Theme
  static const RadioThemeData _radioThemeData = RadioThemeData();

  // Common Input Decoration Theme
  static InputDecorationTheme _inputDecorationTheme([
    Color enabledBorder = Colors.grey,
  ]) {
    final _border = OutlineInputBorder(
      borderSide: BorderSide(
        color: enabledBorder.withValues(alpha: 0.30),
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    );
    const _errorBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    );

    return InputDecorationTheme(
      border: _border,
      enabledBorder: _border,
      errorBorder: _errorBorder,
      focusedErrorBorder: _errorBorder,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: GoogleFonts.lato(color: enabledBorder),
      contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 14),
      errorStyle: const TextStyle(color: Colors.red),
    );
  }

  // Common Tabbar Theme
  static TabBarThemeData _tabBarTheme({Color? dividerColor}) {
    return TabBarThemeData(
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: dividerColor,
      tabAlignment: TabAlignment.start,
      labelStyle: GoogleFonts.lato(
        color: DAppColors.kPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: GoogleFonts.lato(
        color: DAppColors.kSecondary,
        fontSize: 16,
      ),

      // Using opacity to change the indicator color for this specific [0xff6200EA] color code. Opacity and even the `indicatorColor` can be removed for other colors
      indicatorColor: DAppColors.kPrimary.withValues(alpha: 0.95),
    );
  }

  // Common Divider Theme
  static DividerThemeData _dividerTheme([Color color = Colors.grey]) {
    return DividerThemeData(color: color);
  }

  // Common FAB Theme
  static const floatingActionButtonThemeData = FloatingActionButtonThemeData(
    backgroundColor: DAppColors.kPrimary,
    foregroundColor: Colors.white,
    shape: CircleBorder(),
  );
}
