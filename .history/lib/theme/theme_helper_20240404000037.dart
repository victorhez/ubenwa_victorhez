import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/utils/pref_utils.dart';
import 'package:ubenwa_victorhez/core/utils/size_utils.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.whiteA70001.withOpacity(0.71),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          shadowColor: appTheme.black900.withOpacity(0.12),
          elevation: 3,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 151,
        space: 151,
        color: colorScheme.primaryContainer.withOpacity(0.33),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.41),
          fontSize: 17.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 8.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 30.fSize,
          fontFamily: 'Irish Grover',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray70001,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray50,
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.blue800,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: 22.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 14.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF4475F6),
    primaryContainer: Color(0XCE05226F),
    secondaryContainer: Color(0XFF848484),

    // Error colors
    errorContainer: Color(0XFF8A6103),
    onError: Color(0XFF7096F7),

    // On colors(text colors)
    onPrimary: Color(0XFF171717),
    onPrimaryContainer: Color(0XFFF6C144),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber100 => Color(0XFFFAE6B4);
  Color get amber300 => Color(0XFFFFC847);
  Color get amber500 => Color(0XFFFFBA18);
  Color get amber600 => Color(0XFFFFB300);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFD2DEFB);
  Color get blue10001 => Color(0XFFD3DEFC);
  Color get blue200 => Color(0XFFA6BFFF);
  Color get blue50 => Color(0XFFEBF3F9);
  Color get blue5001 => Color(0XFFD4E0FD);
  Color get blue800 => Color(0XFF224FC4);
  Color get blue900 => Color(0XFF1C409E);

  // BlueGray
  Color get blueGray900 => Color(0XFF363636);
  Color get blueGray90001 => Color(0XFF333333);
  Color get blueGray90002 => Color(0XFF313131);
  Color get blueGray90003 => Color(0XFF292D32);

  // DeepOrange
  Color get deepOrange50 => Color(0XFFFBF2E9);

  // DeepPurple
  Color get deepPurple50 => Color(0XFFEBD4FD);

  // Graye
  Color get gray1005e => Color(0X5EF7F7F7);

  // Gray
  Color get gray200 => Color(0XFFE8E8E8);
  Color get gray20001 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray400 => Color(0XFFB6B6B6);
  Color get gray50 => Color(0XFFF8F8F8);
  Color get gray500 => Color(0XFF9A9A9A);
  Color get gray700 => Color(0XFF666666);
  Color get gray70001 => Color(0XFF686868);
  Color get gray800 => Color(0XFF3A3A3A);
  Color get gray900 => Color(0XFF282828);

  // Green
  Color get green300 => Color(0XFF74BF8F);
  Color get green800 => Color(0XFF14823D);

  // Indigo
  Color get indigo50 => Color(0XFFE9EEFB);
  Color get indigo900 => Color(0XFF07236B);
  Color get indigo90001 => Color(0XFF122B83);
  Color get indigo90002 => Color(0XFF0C2C7F);

  // Lime
  Color get lime900 => Color(0XFF896510);

  // Orange
  Color get orange100 => Color(0XFFFDE6AE);
  Color get orange50 => Color(0XFFFDF4D4);
  Color get orange5001 => Color(0XFFFBF2DD);

  // Purple
  Color get purple500 => Color(0XFFAC228D);

  // Red
  Color get redA700 => Color(0XFFD50F0F);

  // Teal
  Color get teal900 => Color(0XFF133B5C);

  // White
  Color get whiteA700 => Color(0XFFFFFFFD);
  Color get whiteA70001 => Color(0XFFFFFFFF);
  Color get blue => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
