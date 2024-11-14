import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimary,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(0.87),
          fontSize: 16.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.blueGray90004,
          fontSize: 45.fSize,
          fontFamily: 'Titillium Web',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: appTheme.blueGray90005,
          fontSize: 38.fSize,
          fontFamily: 'IBM Plex Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.blueGray80004,
          fontSize: 28.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(0.87),
          fontSize: 24.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray60002,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray60002,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray50003,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.1),
          fontSize: 16.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF1D1D34),
    primaryContainer: Color(0XFF737373),
    secondaryContainer: Color(0XFF1D1E20),
    errorContainer: Color(0XFF363636),
    onErrorContainer: Color(0XFFFFFFFF),
    onPrimary: Color(0X33B7B7B7),
    onPrimaryContainer: Color(0XFF101522),
    onSecondaryContainer: Color(0XFF45E13D),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber600 => Color(0XFFFBBB00);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue300 => Color(0XFF5FA8EE);
  Color get blue500 => Color(0XFF2194FF);
// BlueGray
  Color get blueGray100 => Color(0XFFD5D5D5);
  Color get blueGray10001 => Color(0XFFD3D4D7);
  Color get blueGray10002 => Color(0XFFD9D9D9);
  Color get blueGray10003 => Color(0XFFCFD8DC);
  Color get blueGray10004 => Color(0XFFCECECE);
  Color get blueGray10005 => Color(0XFFD4D9DF);
  Color get blueGray300 => Color(0XFFA0A7B0);
  Color get blueGray30001 => Color(0XFF9CA3AF);
  Color get blueGray30002 => Color(0XFF92A2AB);
  Color get blueGray50 => Color(0XFFE8F3F1);
  Color get blueGray600 => Color(0XFF53577A);
  Color get blueGray800 => Color(0XFF324646);
  Color get blueGray80001 => Color(0XFF1F4C6B);
  Color get blueGray80002 => Color(0XFF374151);
  Color get blueGray80003 => Color(0XFF404056);
  Color get blueGray80004 => Color(0XFF242B5C);
  Color get blueGray80054 => Color(0X542A4661);
  Color get blueGray900 => Color(0XFF2C2C2C);
  Color get blueGray90001 => Color(0XFF242736);
  Color get blueGray90002 => Color(0XFF2D3748);
  Color get blueGray90004 => Color(0XFF011A51);
  Color get blueGray90005 => Color(0XFF263238);
  Color get blueGray90006 => Color(0XFF001A4C);
// BlueGraye
  Color get blueGray3001e => Color(0X1E9BA3AF);
// BlueGrayf
  Color get blueGray9007f => Color(0X7F1D2634);
// DeepOrange
  Color get deepOrange100 => Color(0XFFFFB9AA);
  Color get deepOrange50 => Color(0XFFF4E3E3);
  Color get deepOrangeA100 => Color(0XFFFF948E);
// DeepOrangeAf
  Color get deepOrangeA1007f => Color(0X7FFF958E);
// DeepPurple
  Color get deepPurple100 => Color(0XFFD7D0FF);
  Color get deepPurpleA100 => Color(0XFFAB92F0);
  Color get deepPurpleA10001 => Color(0XFFA090FF);
  Color get deepPurpleA200 => Color(0XFF7B61FF);
// DeepPurpleAf
  Color get deepPurpleA1007f => Color(0X7FAD9EFF);
// Gray
  Color get gray100 => Color(0XFFF3F4F6);
  Color get gray10001 => Color(0XFFF5F4F7);
  Color get gray10002 => Color(0XFFF7F7F7);
  Color get gray10003 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFE5E7EB);
  Color get gray20001 => Color(0XFFEBEBEB);
  Color get gray20002 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray30001 => Color(0XFFDEDEDE);
  Color get gray30002 => Color(0XFFE3E4E8);
  Color get gray30003 => Color(0XFFD7DCF0);
  Color get gray30004 => Color(0XFFE3E5E7);
  Color get gray400 => Color(0XFFC7BEBE);
  Color get gray40001 => Color(0XFFBDBDBD);
  Color get gray40002 => Color(0XFFAFAFAF);
  Color get gray40003 => Color(0XFFAEAEB3);
  Color get gray40004 => Color(0XFFCAC9C9);
  Color get gray40035 => Color(0X35B0B0B0);
  Color get gray50 => Color(0XFFF4F7FF);
  Color get gray500 => Color(0XFFABABAB);
  Color get gray50001 => Color(0XFF979797);
  Color get gray50002 => Color(0XFF9D9898);
  Color get gray50003 => Color(0XFFADADAD);
  Color get gray50004 => Color(0XFF8F959E);
  Color get gray5001 => Color(0XFFF9FAFB);
  Color get gray600 => Color(0XFF848484);
  Color get gray60001 => Color(0XFF666B72);
  Color get gray60002 => Color(0XFF6B7280);
  Color get gray70001 => Color(0XFF555555);
  Color get gray70002 => Color(0XFF666666);
  Color get gray70003 => Color(0XFF585858);
  Color get gray900 => Color(0XFF02053C);
  Color get gray90001 => Color(0XFF1D1C34);
  Color get gray90003 => Color(0XFF101623);
  Color get gray90004 => Color(0XFF1D1F34);
  Color get gray90005 => Color(0XFF121826);
  Color get gray90006 => Color(0XFF1D1E34);
// Grayf
  Color get gray5003f => Color(0X3F9E9898);
// Green
  Color get green400 => Color(0XFF64C464);
  Color get green50 => Color(0XFFE3F4E3);
  Color get green5001 => Color(0XFFE5FCDA);
  Color get green600 => Color(0XFF25A55F);
  Color get greenA100 => Color(0XFFC4FFB5);
  Color get greenA10001 => Color(0XFFC5FFC2);
// Indigo
  Color get indigo200 => Color(0XFFA1A4C1);
  Color get indigo20001 => Color(0XFF9EB2D3);
  Color get indigo400 => Color(0XFF5364BE);
  Color get indigo500 => Color(0XFF3669C9);
  Color get indigo800 => Color(0XFF253B80);
  Color get indigo900 => Color(0XFF203C71);
  Color get indigo90001 => Color(0XFF1D3A6F);
  Color get indigo90002 => Color(0XFF1D3A70);
  Color get indigo90003 => Color(0XFF1A1F71);
  Color get indigoA100 => Color(0XFF8C78FF);
// LightBlue
  Color get lightBlueA200 => Color(0XFF37C6F7);
// LightGreen
  Color get lightGreen100 => Color(0XFFD2FFD0);
  Color get lightGreenA700 => Color(0XFF33FF00);
// Lime
  Color get lime500 => Color(0XFFD7D145);
// Orange
  Color get orange400 => Color(0XFFFD922A);
  Color get orange500 => Color(0XFFFF9602);
  Color get orangeA200 => Color(0XFFFB923C);
// Red
  Color get red100 => Color(0XFFFFCBC8);
  Color get red300 => Color(0XFFFB6868);
  Color get red30001 => Color(0XFFC46464);
  Color get redA200 => Color(0XFFFC6464);
  Color get redA20001 => Color(0XFFFF5757);
// Teal
  Color get teal300 => Color(0XFF55BBC5);
  Color get teal400 => Color(0XFF1DAB87);
  Color get teal900 => Color(0XFF03314B);
// White
  Color get whiteA700 => Color(0XFFFEFEFE);
// Yellow
  Color get yellow100 => Color(0XFFFFFCB5);

  get primaryColor => null;
}
