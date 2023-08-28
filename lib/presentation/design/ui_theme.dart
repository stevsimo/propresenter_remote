import 'package:flutter/material.dart';
import 'package:propresenter_remote/presentation/design/constants/ui_plattform.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_theme.g.dart';

///
/// Providers
///
@Riverpod(keepAlive: true)
UiTheme uiTheme(UiThemeRef ref) {
  return UiTheme();
}

/// UI Constants
const kFontFamily = 'Muli';
const kPrimaryColor = Color(0xfff59c00);
const kLightBackground = Color(0xfffafafa);
const kLightTextColor = Color(0xff666666);
const kDarkBackground = Color(0xff121212);
const kCardBorderRadius = 8.0;
const kMenuIconColor = Color(0xff1abcdd);
const kAppBarHeight = kToolbarHeight + 8;
const kTextShadow = [
  Shadow(
    offset: Offset(1, 1),
    blurRadius: 8,
    color: Color(0xFF90A4AE),
  ),
];

///
/// The app's UI theme
///
class UiTheme {
  // Light Theme
  get lightTheme {
    final baseLightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: kFontFamily,
      primaryColor: kPrimaryColor,
      cardColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(
        seedColor: kPrimaryColor,
      ),
      visualDensity: VisualDensity.standard,
      scaffoldBackgroundColor: kLightBackground,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 8,
        shadowColor: Colors.grey.withOpacity(0.1),
        surfaceTintColor: Colors.white,
        toolbarHeight: kAppBarHeight,
      ),
    );

    // overrides
    return baseLightTheme.copyWith(
      splashFactory: UiPlatform.isWeb || UiPlatform.isIOS
          ? NoSplash.splashFactory
          : baseLightTheme.elevatedButtonTheme.style?.splashFactory,
      textTheme: baseLightTheme.textTheme.copyWith(
        labelSmall: baseLightTheme.textTheme.labelSmall?.copyWith(color: kLightTextColor),
        labelMedium: baseLightTheme.textTheme.labelMedium?.copyWith(color: kLightTextColor),
        labelLarge: baseLightTheme.textTheme.labelLarge?.copyWith(color: kLightTextColor),
        bodySmall: baseLightTheme.textTheme.bodySmall?.copyWith(height: 1.5, color: kLightTextColor),
        bodyMedium: baseLightTheme.textTheme.bodyMedium?.copyWith(height: 1.5, color: kLightTextColor),
        bodyLarge: baseLightTheme.textTheme.bodyLarge?.copyWith(height: 1.5, color: kLightTextColor),
        headlineSmall:
            baseLightTheme.textTheme.headlineSmall?.copyWith(color: kLightTextColor, fontWeight: FontWeight.w400),
        headlineMedium:
            baseLightTheme.textTheme.headlineMedium?.copyWith(color: kLightTextColor, fontWeight: FontWeight.w400),
        headlineLarge:
            baseLightTheme.textTheme.headlineLarge?.copyWith(color: kLightTextColor, fontWeight: FontWeight.w400),
        titleSmall: baseLightTheme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400),
        titleMedium: baseLightTheme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
        titleLarge: baseLightTheme.textTheme.titleLarge?.copyWith(color: kLightTextColor, fontWeight: FontWeight.w400),
        displaySmall:
            baseLightTheme.textTheme.displaySmall?.copyWith(color: kLightTextColor, fontWeight: FontWeight.w400),
        displayMedium:
            baseLightTheme.textTheme.displayMedium?.copyWith(color: kLightTextColor, fontWeight: FontWeight.w400),
        displayLarge:
            baseLightTheme.textTheme.displayLarge?.copyWith(color: kLightTextColor, fontWeight: FontWeight.w400),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          enableFeedback: true,
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
          elevation: MaterialStateProperty.all(2),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) return Colors.white38;
              return Colors.white;
            },
          ),
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      bottomNavigationBarTheme: baseLightTheme.bottomNavigationBarTheme.copyWith(
        enableFeedback: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
      ),
      inputDecorationTheme: baseLightTheme.inputDecorationTheme.copyWith(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kCardBorderRadius),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
    );
  }

  // Dark Theme
  get darkTheme {
    final baseDarkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: kFontFamily,
      primaryColor: kPrimaryColor,
      cardColor: const Color(0xff1e1e1e),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: kPrimaryColor,
      ),
      visualDensity: VisualDensity.standard,
      scaffoldBackgroundColor: kDarkBackground,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: const Color(0xff1e1e1e),
        shadowColor: Colors.grey.withOpacity(0.1),
        surfaceTintColor: Colors.black,
        toolbarHeight: kAppBarHeight,
      ),
    );

    // overrides
    return baseDarkTheme.copyWith(
      splashFactory: UiPlatform.isWeb || UiPlatform.isIOS
          ? NoSplash.splashFactory
          : baseDarkTheme.elevatedButtonTheme.style?.splashFactory,
      textTheme: baseDarkTheme.textTheme.copyWith(
        bodySmall: baseDarkTheme.textTheme.bodySmall?.copyWith(height: 1.5),
        bodyMedium: baseDarkTheme.textTheme.bodyMedium?.copyWith(height: 1.5),
        bodyLarge: baseDarkTheme.textTheme.bodyLarge?.copyWith(height: 1.5),
        headlineSmall: baseDarkTheme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w400),
        headlineMedium: baseDarkTheme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w400),
        headlineLarge: baseDarkTheme.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w400),
        titleSmall: baseDarkTheme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400),
        titleMedium: baseDarkTheme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
        titleLarge: baseDarkTheme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400),
        displaySmall: baseDarkTheme.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w400),
        displayMedium: baseDarkTheme.textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w400),
        displayLarge: baseDarkTheme.textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          enableFeedback: true,
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
          elevation: MaterialStateProperty.all(2),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) return Colors.white38;
              return kDarkBackground;
            },
          ),
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
      bottomNavigationBarTheme: baseDarkTheme.bottomNavigationBarTheme.copyWith(
        enableFeedback: true,
        elevation: 0,
        selectedItemColor: kPrimaryColor,
      ),
      inputDecorationTheme: baseDarkTheme.inputDecorationTheme.copyWith(
        filled: true,
        fillColor: const Color(0xff1e1e1e),
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kCardBorderRadius),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
    );
  }
}
