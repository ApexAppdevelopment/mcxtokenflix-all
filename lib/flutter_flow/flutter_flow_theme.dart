// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;
  late Color btnText;
  late Color customColor3;
  late Color customColor4;
  late Color white;
  late Color background;
  late Color customColor1;
  late Color backgroundComponents;
  late Color overlay;
  late Color grayIcon;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF81812D);
  late Color secondaryColor = const Color(0xFF5CC1B4);
  late Color tertiaryColor = const Color(0xFFEC5685);
  late Color alternate = const Color(0xFFFD6570);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color background = Color(0xFF1D2429);
  late Color customColor1 = Color(0xFF2FB73C);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color overlay = Color(0xB3FFFFFF);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Roboto';
  TextStyle get title1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
      );
  String get title2Family => 'Roboto';
  TextStyle get title2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get title3Family => 'Roboto';
  TextStyle get title3 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get subtitle1Family => 'Roboto';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get subtitle2Family => 'Roboto';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Roboto';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Roboto';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Roboto';
  TextStyle get title1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get title2Family => 'Roboto';
  TextStyle get title2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title3Family => 'Roboto';
  TextStyle get title3 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Roboto';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Roboto';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Roboto';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Roboto';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Roboto';
  TextStyle get title1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get title2Family => 'Roboto';
  TextStyle get title2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title3Family => 'Roboto';
  TextStyle get title3 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Roboto';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Roboto';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Roboto';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Roboto';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF81812D);
  late Color secondaryColor = const Color(0xFF81812D);
  late Color tertiaryColor = const Color(0xFFEC5685);
  late Color alternate = const Color(0xFFFD6570);
  late Color primaryBackground = const Color(0xFF0E1925);
  late Color secondaryBackground = const Color(0xFF03131B);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF22282F);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color background = Color(0xFF1D2429);
  late Color customColor1 = Color(0xFF452FB7);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color overlay = Color(0xB314181B);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
