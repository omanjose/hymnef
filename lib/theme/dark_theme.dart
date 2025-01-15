import 'package:flutter/material.dart';

ThemeData darkThemeData(){
return ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android:PredictiveBackPageTransitionsBuilder(),
      TargetPlatform.iOS: PredictiveBackPageTransitionsBuilder(),
    },
  ),

  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    centerTitle: true,
  ),
dividerColor: Colors.white,
  cardTheme: const CardTheme(
    color: Colors.black,
  ),
  focusColor: Colors.white,
  inputDecorationTheme: const InputDecorationTheme(
    focusColor: Colors.white,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  ),
  dialogTheme: const DialogTheme(backgroundColor: Colors.black),
  drawerTheme: const DrawerThemeData(backgroundColor: Colors.black54),
  dialogBackgroundColor: Colors.black,
);
}