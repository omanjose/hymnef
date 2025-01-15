

import 'package:flutter/material.dart';

void showAboutUs(BuildContext context){
  showDialog(context: context,
      barrierDismissible: false,
      builder: (context){
    return SimpleDialog(
contentPadding: const EdgeInsets.all(20),
    title:  const Center(child: Text('About the FTH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
          children: [
            const Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Text(  """The Faith Tabernacle e-Hymnal we trust is a source of spiritual awakening, encouragement, comfort to God's people and ecstatic praise of our Great Redeemer. It is hoped that with the variety of hymns contained in this hymnal, our vision for every user will be achieved, which is that the lost may be saved and the redeemed may be brought closer to God.\nThe hymnal is designed to dynamically suit your preferred font size. An improvement to the earlier version, you have hymns in English and Efik languages, and you can search hymn by the title, number or the first word of the first stanza. """,
                style: TextStyle(fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: InkWell(
                onTap: ()=>Navigator.of(context).pop(),
                child: Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.cyan
                ),
                child: const Center(child: Text('Close', style: TextStyle(fontWeight: FontWeight.bold),)),
              ),
              ),
            )
          ],
    );
  });
}