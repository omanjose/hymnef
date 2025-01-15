import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:share_plus/share_plus.dart';

class HymnBodyControl extends GetxController{
  late double fontSizeSetting;
  double defaultTextFontSize = 13.0;
  final Box<dynamic> fontSizeBox = Hive.box('fontSize');

  @override
  void onInit() {
    defaultTextFontSize = getSizeFromHive();
    super.onInit();
  }
// share feature
  void shareHymn(String title, String body) {
    Share.share(body, subject: title);
  }

getSizeFromHive(){
  fontSizeSetting = fontSizeBox.get('resize',defaultValue: defaultTextFontSize);
  return fontSizeSetting;
}
updateSizeInHive(double data)async{
    await fontSizeBox.put('resize', data);
}

increment() {
  if (defaultTextFontSize <= 13 || defaultTextFontSize!=42) {
    updateSizeInHive(defaultTextFontSize++);
    update();//later fix it
  } else {
    customSnackBar('Information', 'Fonts cannot increase further');
  return;
  }
}
    decrement(){
      if(defaultTextFontSize!= 13){
       updateSizeInHive(defaultTextFontSize--);
    update();
    }else {
        customSnackBar('Information', 'Fonts cannot decrease further');
     return;
      }
}

    void customSnackBar(String title, String textMessage) {
      Get.snackbar(
        title.toUpperCase(),
        textMessage,
        snackPosition: SnackPosition.TOP,

        snackStyle: SnackStyle.FLOATING,
        backgroundColor: Colors.black54,
        icon: const Icon(Icons.help_outline_rounded),
        colorText: Colors.white,
      );
    }
}
