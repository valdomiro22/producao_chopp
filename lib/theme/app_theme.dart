import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  // ======================================================
  // TEMA CLARO
  // ======================================================

  static final ColorScheme lightColorSchemeChopp = ColorScheme(
    brightness: Brightness.light,

    primary: AppColors.primaryLightChopp,
    onPrimary: AppColors.onPrimaryLightChopp,

    primaryContainer: AppColors.primaryContainerLightChopp,
    onPrimaryContainer: AppColors.onPrimaryContainerLightChopp,

    secondary: AppColors.secondaryLightChopp,
    onSecondary: AppColors.onSecondaryLightChopp,

    secondaryContainer: AppColors.secondaryContainerLightChopp,
    onSecondaryContainer: AppColors.onSecondaryContainerLightChopp,

    tertiary: AppColors.tertiaryLightChopp,
    onTertiary: AppColors.onTertiaryLightChopp,

    tertiaryContainer: AppColors.tertiaryContainerLightChopp,
    onTertiaryContainer: AppColors.onTertiaryContainerLightChopp,

    error: AppColors.errorLightChopp,
    onError: AppColors.onErrorLightChopp,

    surface: AppColors.surfaceLightChopp,
    onSurface: AppColors.onSurfaceLightChopp,

    surfaceContainerHighest: AppColors.surfaceVariantLightChopp,
    onSurfaceVariant: AppColors.onSurfaceVariantLightChopp,

    outline: AppColors.outlineLightChopp,
    outlineVariant: AppColors.outlineVariantLightChopp,

    shadow: Colors.black,
    scrim: Colors.black,

    inverseSurface: AppColors.choppDarkSurface,
    onInverseSurface: AppColors.onSurfaceDarkChopp,
    inversePrimary: AppColors.primaryDarkChopp,
  );

  // ======================================================
  // TEMA ESCURO
  // ======================================================

  static final ColorScheme darkColorSchemeChopp = ColorScheme(
    brightness: Brightness.dark,

    primary: AppColors.primaryDarkChopp,
    onPrimary: AppColors.onPrimaryDarkChopp,

    primaryContainer: AppColors.primaryContainerDarkChopp,
    onPrimaryContainer: AppColors.onPrimaryContainerDarkChopp,

    secondary: AppColors.secondaryDarkChopp,
    onSecondary: AppColors.onSecondaryDarkChopp,

    secondaryContainer: AppColors.secondaryContainerDarkChopp,
    onSecondaryContainer: AppColors.onSecondaryContainerDarkChopp,

    tertiary: AppColors.tertiaryDarkChopp,
    onTertiary: AppColors.onTertiaryDarkChopp,

    tertiaryContainer: AppColors.tertiaryContainerDarkChopp,
    onTertiaryContainer: AppColors.onTertiaryContainerDarkChopp,

    error: AppColors.errorDarkChopp,
    onError: AppColors.onErrorDarkChopp,

    surface: AppColors.surfaceDarkChopp,
    onSurface: AppColors.onSurfaceDarkChopp,

    surfaceContainerHighest: AppColors.surfaceVariantDarkChopp,
    onSurfaceVariant: AppColors.onSurfaceVariantDarkChopp,

    outline: AppColors.outlineDarkChopp,
    outlineVariant: AppColors.outlineVariantDarkChopp,

    shadow: Colors.black,
    scrim: Colors.black,

    inverseSurface: AppColors.choppLightSurface,
    onInverseSurface: AppColors.onSurfaceLightChopp,
    inversePrimary: AppColors.primaryLightChopp,
  );

  // ======================================================
  // THEME DATA CLARO
  // ======================================================

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: lightColorSchemeChopp,

    scaffoldBackgroundColor: AppColors.backgroundLightChopp,

    appBarTheme: AppBarTheme(
      // backgroundColor: AppColors.primaryLightChopp,
      backgroundColor: AppColors.backgroundLightChopp,
      foregroundColor: AppColors.primaryLightChopp,
      iconTheme: IconThemeData(color: AppColors.primaryLightChopp),
      centerTitle: true,
      elevation: 0,
    ),

    cardTheme: CardThemeData(
      color: AppColors.surfaceLightChopp,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLightChopp,
      foregroundColor: AppColors.onPrimaryLightChopp,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLightChopp,
        foregroundColor: AppColors.onPrimaryLightChopp,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceLightChopp,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  // ======================================================
  // THEME DATA ESCURO
  // ======================================================

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: darkColorSchemeChopp,

    scaffoldBackgroundColor: AppColors.backgroundDarkChopp,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceDarkChopp,
      foregroundColor: AppColors.onSurfaceDarkChopp,
      centerTitle: true,
      elevation: 0,
    ),

    cardTheme: CardThemeData(
      color: AppColors.surfaceDarkChopp,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryDarkChopp,
      foregroundColor: AppColors.onPrimaryDarkChopp,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDarkChopp,
        foregroundColor: AppColors.onPrimaryDarkChopp,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceDarkChopp,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}