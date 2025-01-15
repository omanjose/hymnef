import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controls/body_controller.dart';
import '../widgets/hymn_body_display.dart';

class EnglishBody extends StatelessWidget {
  const EnglishBody({super.key, required this.hymnIndex, required this.items});
  final int hymnIndex;
  final List items;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HymnBodyControl());
    late PageController pageController =PageController(initialPage: hymnIndex);
    return SafeArea(
      child: PageView.builder(
          itemCount: items.length,
          controller: pageController,
          itemBuilder: (context, index){
            var titleText= items[index]['title'].toString();
            var bodyText =items[index]['body'].toString();
            var fullText = "$titleText\n$bodyText";
            return HymnBodyDisplay(
              hymnBodyText: items[index]['body'],
              hymnTitle: items[index]['title'],
              hymnId: 'HYMN ${items[index]['id'].toString()}',
              shareContent: ()=>controller.shareHymn(titleText,fullText),
              onTap: () {
                Get.back(canPop: true); //add music play controls after
              },);
          }),
    );
  }
}
