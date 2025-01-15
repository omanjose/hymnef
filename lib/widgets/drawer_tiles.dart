import 'package:flutter/material.dart';

class DrawerTiles extends StatelessWidget {
  final String titleText;
  final VoidCallback onTap;
  final IconData leadingIcon;
  final IconButton? trailingIcon;
  final Widget? subTitle;

  const DrawerTiles(
      {super.key,
      required this.titleText,
         this.subTitle,
      required this.onTap,
      this.trailingIcon,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.cyan,
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(leadingIcon, size: 20, color: Colors.white70),
        title: Text(
          titleText,
          style: const TextStyle(fontSize: 14,color:Colors.white, fontWeight: FontWeight.bold ),
        ),
        subtitle: subTitle,
        trailing: trailingIcon,
      ),
    );
  }
}
