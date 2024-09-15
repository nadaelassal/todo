import 'package:flutter/material.dart';

class AppThem {
  static Color primary = Color(0xFF5D9CEC);
  static Color backgroundLight = Color(0xFFDFECDB);
  static Color backgroundDark = Color(0xFF060E1E);
  static Color white = Color(0XFFFFFFFF);
  static Color green = Color(0xFF61E757);
  static Color grey = Color(0xFFC8C9CB);
  static Color red = Color(0xFFEC4B4B);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: backgroundLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: white,
      unselectedItemColor: grey,
      selectedItemColor: primary,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: white,
      shape: CircleBorder(
        side: BorderSide(
          color: white,
          width: 4,
        ),
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
