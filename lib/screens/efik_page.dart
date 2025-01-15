import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hymnef/models/efik_hymns.dart';
import 'package:hymnef/widgets/hymn_body_display.dart';

import '../widgets/home_display.dart';
import '../widgets/text_field.dart';
import 'efik_body.dart';

class EfikHymnPage extends StatelessWidget {
  const EfikHymnPage({super.key});

  @override
  Widget build(BuildContext context) {
    final  controller = Get.put(EfikController());

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          CustomField(hintText: 'Search...',
              snackTitle: 'Information',
              snackText: 'Search by hymn number, title or words',
              onChanged: (value)=>controller.filterEfikHymns(value),
              controller: controller.searchController),
        const SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: Obx(
                  () => ListView.builder(
                itemCount: controller.foundHymns.value.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return HomeDisplayScreen(
                    hymnId: controller.foundHymns.value[index]['id']
                        .toString(),
                    hymnTitle: controller
                        .foundHymns.value[index]['title']
                        .toString(),
                    onTap: () {
                      int selectedIndex = controller.allEfikHymns.indexOf(controller.foundHymns.value[index]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EfikHymnBody(hymnIndex: selectedIndex, items: controller.allEfikHymns),
                      ),);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
