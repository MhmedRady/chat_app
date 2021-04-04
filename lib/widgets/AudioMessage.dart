
import 'package:flutter/material.dart';

import '../Const.dart';

class AudioMessage extends StatelessWidget {
  final msgContent;

  const AudioMessage({Key key, this.msgContent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var play = false;

    return Container(
      width: size.width/1.9,
      height: 25,
      padding: EdgeInsets.symmetric(
        horizontal: cMainPadding*.2,
      ),
      margin: EdgeInsets.only(bottom: cMainVal),
      decoration: BoxDecoration(
        // color: cCustomBlue,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: cMainPadding/2,
                left: 0
            ),
            child: SizedBox(
              width: cMainVal,
              child: InkWell(
                child: Icon(
                  play ? Icons.stop : Icons.play_arrow,
                  color: msgContent.isSender ? cEE :cCustomBlue,),
                  onTap: (){
                      play = !play;
                  },
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: cMainVal,
                    right: cMainVal
                ),
                child: SliderTheme(
                  data: SliderThemeData(
                    inactiveTrackColor: msgContent.isSender ? cEE :cBorderColor.withOpacity(.6),
                    thumbColor: msgContent.isSender ? cEE :cCustomBlue.withOpacity(.7),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                    overlayColor: cBorderColor.withOpacity(.1),
                  ),
                  child: SizedBox(
                    width: size.width/2*.8,
                    child: Slider(
                      value: 0,
                      onChanged: (value) => print(value),
                      min: 0,
                      max: cMainVal,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 4,
                right: -cMainVal*3.2,
                  child: Container(
                    decoration: BoxDecoration(
                    color: msgContent.isSender ? cEE : cCustomBlue,
                    borderRadius: BorderRadius.circular(cMainVal*2)
                    ),
                    padding: EdgeInsets.fromLTRB(
                    cMainPadding, // Left
                    cMainPadding/2, // TOP
                    cMainPadding, // Right
                    cMainPadding/2 // Bottom
                    ),
                    child: Text("05:10",style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500,
                        color: msgContent.isSender ? Colors.black87 : cEE
                    ),
                    ),
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}
