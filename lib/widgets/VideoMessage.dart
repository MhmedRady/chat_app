import 'package:flutter/material.dart';

import '../Const.dart';

class VideoMessage extends StatelessWidget {
  final msgContent;

  const VideoMessage({Key key, this.msgContent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width/1.9,
      height: size.width/1.8,
      child: AspectRatio(
        aspectRatio: 1.7,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  margin: EdgeInsets.only(bottom: cMainVal*2),

                  child: Opacity(opacity: .9,child: Image.asset("assets/images/pages/img_3.jpg"))),
            ),
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade900,
              ),
              child:
              FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.play_arrow,size: 25,color: cEE,),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
                child: Text("21:02",style: TextStyle(
                  color: cEE
                ),)
            )
          ],
        ),
      ),
    );
  }
}