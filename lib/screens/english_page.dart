import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hymnef/models/english_hymns.dart';
import 'package:hymnef/screens/english_body.dart';
import 'package:hymnef/widgets/home_display.dart';
import 'package:hymnef/widgets/text_field.dart';

import 'efik_body.dart';

class EnglishHymnPage extends StatelessWidget {
  const EnglishHymnPage({super.key});

  @override
  Widget build(BuildContext context) {
    final englishController = Get.put(EnglishController());


    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          CustomField(hintText: 'Search...',
              snackTitle: 'Information',
              snackText: 'Search by hymn number, title or words',
              onChanged: (value)=>englishController.filterEnglishHymns(value),
              controller: englishController.searchController),
          const SizedBox(height: 5),
          Expanded(
            flex: 1,
            child: Obx(
              () => ListView.builder(
                itemCount: englishController.foundHymns.value.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return HomeDisplayScreen(
                    hymnId:
                        englishController.foundHymns.value[index]['id'].toString(),
                    hymnTitle:
                        englishController.foundHymns.value[index]['title'].toString(),
                    onTap: () {
                      int selectedIndex = englishController.allHymns.indexOf(englishController.foundHymns.value[index]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  EnglishBody(
                            hymnIndex: selectedIndex, items: englishController.allHymns,
                          ),
                        ),
                      );
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
