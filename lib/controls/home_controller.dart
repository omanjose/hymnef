

import 'package:get/get.dart';
import 'package:hymnef/controls/theme_controller.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  final ThemeController _themeController = Get.put(ThemeController());
  Rx<String>currentMode =''.obs;
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
   isDarkMode.value = _themeController.isDarkTheme;
   currentMode.value = _themeController.isDarkTheme?'Dark' : 'Light';
    super.onInit();
  }
  
  void changeAppTheme()=>_changeTheme();
  
  void _changeTheme(){
    _themeController.changeTheme(isDarkMode: isDarkMode, modeName: currentMode);
  }

  bool toggleTheme(){
    _changeTheme();
    return isDarkMode.value;
  }
}