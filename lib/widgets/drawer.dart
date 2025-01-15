import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hymnef/widgets/dialog_display.dart';
import 'package:hymnef/widgets/drawer_tiles.dart';
import 'package:share_plus/share_plus.dart';

import '../controls/home_controller.dart';

class DrawerClass extends StatelessWidget {
  const DrawerClass({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return Drawer(
      width: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width * 0.60
          : MediaQuery.of(context).size.width * 0.35,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 200, 5, 10),
          child: Column(
            children: [
              DrawerTiles(
                  titleText: 'About FTH',
                  onTap: () {showAboutUs(context);},
                  leadingIcon: Icons.turned_in_not_outlined),
              DrawerTiles(
                  titleText: 'Share app',
                  onTap: () {
                    Share.share('playstore or ios link');
                  },
                  leadingIcon: Icons.share),
              DrawerTiles(
                  titleText: 'Contact Us',
                  subTitle: const FittedBox(child:  Text('ng.signatureinnovations@gmail.com',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),)),
                  onTap: () {},
                  leadingIcon: Icons.sms_outlined),
              DrawerTiles(
                  titleText: 'Change theme',
                  onTap: () {
                    controller.changeAppTheme();
                  },
                  leadingIcon: controller.isDarkMode.value?Icons.dark_mode_outlined:Icons.lightbulb_outlined),
              DrawerTiles(
                  titleText: 'Exit app',
                  onTap: () => SystemNavigator.pop(),
                  leadingIcon: Icons.close_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
