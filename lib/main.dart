import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hymnef/screens/home.dart';
import 'package:hymnef/theme/theme_class.dart';

import 'controls/theme_controller.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox('settings');
  await Hive.openBox('fontSize');
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final controller = Get.put(ThemeController());
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode:controller.themeStateFromSettingBox ,
      home: const HomeScreen(),
    );
  }
}
