import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  final BuildContext context;

  ThemeManager(this.context);

  final ThemeData websiteTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xffB8C4FF),
      elevation: 0,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xff1B1B1F),
    ),
    cardTheme: CardTheme(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Color(0xff43465A),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xff1B1B1F),
    textTheme: GoogleFonts.poppinsTextTheme(),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffB8C4FF),
      secondary: Color(0xffC3C5DD),
      surface: Color(0xff1B1B1F),
      background: Color(0xff1B1B1F),
      error: Color(0xffFFB4A9),
      primaryVariant: Color(0xff2D4090),
      secondaryVariant: Color(0xff43465A),
      onSurface: Color(0xffE4E1E6),
      onBackground: Color(0xffE4E1E6),
      onPrimary: Color(0xff122879),
      onError: Color(0xff680003),
      onSecondary: Color(0xff2C2F41),
    ),
  );
}
