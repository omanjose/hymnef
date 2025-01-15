import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hymnef/controls/body_controller.dart';

class HymnBodyDisplay extends StatelessWidget {
  const HymnBodyDisplay(
      {super.key, required this.hymnBodyText, required this.hymnTitle, required this.hymnId, required this.shareContent, required this.onTap});
  final String hymnTitle, hymnId,hymnBodyText;
  final VoidCallback onTap,shareContent;



  @override
  Widget build(BuildContext context) {
    final bodyController = Get.put(HymnBodyControl());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: onTap,
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title:  Text(
          hymnId,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
          ),
          IconButton(
            onPressed: shareContent,
            icon: const Icon(Icons.share),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child:  FittedBox(
            child: Text(
              hymnTitle,
              textAlign: TextAlign.center,
              style:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        // backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,vertical: 10
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(height: 1.0, thickness: 4),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                physics:const AlwaysScrollableScrollPhysics(),
                child: Center(child:GetBuilder<HymnBodyControl>(
                  builder: (controller)=> Text(hymnBodyText,
                  style: TextStyle(fontSize: controller.getSizeFromHive()
                    ),),
                ),),
            ),
            ),
          ],
        ),
      ),

     floatingActionButton:

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 40,
                height: 40,
                child: FloatingActionButton(
                  backgroundColor: Colors.white70,
                  shape:ShapeBorder.lerp(Border.all(color: Colors.black), const CircleBorder(), 1) ,
                  heroTag: null,
                  onPressed: () =>bodyController.increment(),child: const Icon(Icons.text_increase),)),
            const SizedBox(width: 5),
            SizedBox(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                  backgroundColor: Colors.white70,
                  shape:ShapeBorder.lerp(Border.all(color: Colors.black), const CircleBorder(), 1),
                  heroTag: null,
                  onPressed: () =>bodyController.decrement(),child: const Icon(Icons.text_decrease),)),
          ],
        ),
    );
  }
}
