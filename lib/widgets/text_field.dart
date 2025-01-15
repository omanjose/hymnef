import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hymnef/controls/home_controller.dart';

import 'text_formatter.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {super.key,
      required this.hintText,
      required this.snackTitle,
      required this.snackText,
      required this.onChanged,
      required this.controller});

  final String hintText;
  final String snackTitle, snackText;
  final TextEditingController controller;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 2),
      child: Obx(()=>
          Container(
            height: 47,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: homeController.isDarkMode.value?Colors.white:Colors.black),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: const Icon(
                  Icons.search,
                ),
                // suffixIcon: Container(
                //   margin: const EdgeInsets.all(1.5),
                //   decoration: BoxDecoration(
                //     color: const Color(0xff191970),
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: IconButton(
                //     icon: const Icon(Icons.filter_alt_off_outlined),
                //     color: Colors.white,
                //     onPressed: () {
                //       if (controller.text.isEmpty) {
                //         Get.snackbar(
                //           snackTitle,
                //           snackText.toUpperCase(),
                //           snackPosition: SnackPosition.TOP,
                //           // maxWidth: AppLayout.getWidth(400),
                //           snackStyle: SnackStyle.FLOATING,
                //           backgroundColor: Colors.black54,
                //           icon: const Icon(Icons.help_outline_rounded,
                //               color: Colors.white),
                //           colorText: Colors.white,
                //         );
                //       } else {
                //         return;
                //       }
                //     },
                //   ),
                // ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.text,
              inputFormatters: [UpperCaseTextFormatter()],
              textCapitalization: TextCapitalization.characters,
              onChanged: onChanged,
              controller: controller,
            ),
          ),
      ),
        // ),
      // ),
    );
  }
}
