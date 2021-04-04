import 'package:flutter/material.dart';

import '../Const.dart';

class ImageMessage extends StatelessWidget {
  final msgContent;

  const ImageMessage({Key key, this.msgContent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width/1.9,
      height: size.width/1.5,
      child: AspectRatio(
        aspectRatio: 1.7,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/pages/img_1.png",fit: BoxFit.cover,height: size.width/1.6,width: double.infinity,),
            ),
          ],
        ),
      ),
    );
  }
}