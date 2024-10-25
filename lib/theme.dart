import 'package:flutter/material.dart';
class Appcolors{
 static Color primaryColor = const Color.fromRGBO(162, 29, 19, 1);
  static Color primaryAccent = const Color.fromRGBO(120, 14, 14, 1);
  static Color secondaryColor = const Color.fromRGBO(45, 45, 45, 1);
  static Color secondaryAccent = const Color.fromRGBO(35, 35, 35, 1);
  static Color titleColor = const Color.fromRGBO(200, 200, 200, 1);
  static Color textColor = const Color.fromRGBO(150, 150, 150, 1);
  static Color successColor = const Color.fromRGBO(9, 149, 110, 1);
  static Color highlightColor = const Color.fromRGBO(212, 172, 13, 1);
}

ThemeData primaytheme = ThemeData(
  //seed
 colorScheme: ColorScheme.fromSeed( seedColor: Appcolors.primaryColor),

  //scaffoldcolor
  scaffoldBackgroundColor: Appcolors.secondaryAccent,

  //appbarcolor
  appBarTheme:  AppBarTheme(
    foregroundColor: Appcolors.textColor,
    backgroundColor: Appcolors.secondaryColor,
    centerTitle: true,
    surfaceTintColor: Colors.transparent,
      ),
//texttheme
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: Appcolors.textColor, fontSize: 16,letterSpacing: 1),
        headlineMedium: TextStyle(color: Appcolors.titleColor, fontWeight:FontWeight.bold,fontSize:  16,letterSpacing: 1),
        titleMedium: TextStyle(color: Appcolors.titleColor, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 2),
        titleSmall: TextStyle(color: Appcolors.successColor, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 2),
      ),

      //cardtheme
      cardTheme: CardTheme(
    color: Appcolors.secondaryColor.withOpacity(0.5),
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: const EdgeInsets.only(bottom: 16),
 ),


inputDecorationTheme: InputDecorationTheme(
  filled: true,
  fillColor: Appcolors.secondaryColor.withOpacity(0.5),
  prefixIconColor: Appcolors.textColor,
  labelStyle: TextStyle(color: Appcolors.textColor),
  border: InputBorder.none,
),

dialogTheme: DialogTheme(
  backgroundColor: Appcolors.secondaryAccent,
            surfaceTintColor: Colors.transparent,
),

);
