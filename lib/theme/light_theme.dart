
import 'package:flutter/material.dart';

ThemeData lightThemeData(){
  return ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android:PredictiveBackPageTransitionsBuilder(),
        TargetPlatform.iOS:PredictiveBackPageTransitionsBuilder(),
      }
    ),

dividerColor: Colors.black,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.cyan,
      elevation: 0,
      centerTitle: true,
    ),
    cardTheme: const CardTheme(
      color: Colors.indigoAccent    ),
    focusColor: Colors.black,
    inputDecorationTheme: const InputDecorationTheme(
      focusColor: Colors.black,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white
        ),
      ),
    ),
    dialogBackgroundColor: Colors.white,
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.grey,
      scrimColor: Colors.white30,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
          ),
  );
}