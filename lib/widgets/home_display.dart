import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hymnef/controls/home_controller.dart';

class HomeDisplayScreen extends StatelessWidget {
  const HomeDisplayScreen(
      {super.key,
      required this.hymnId,
      required this.hymnTitle,
      required this.onTap});
  final String hymnId;
  final String hymnTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return GestureDetector(
      onTap: onTap,
      child: Obx(()=>
          Container(
            padding: const EdgeInsets.all(6.0),
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              border: Border.all(color:controller.isDarkMode.value?Colors.white:Colors.black , width: 1.0),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.music_note_outlined,
                  size: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  hymnId,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    hymnTitle,
                    overflow: TextOverflow.ellipsis,
                    style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
