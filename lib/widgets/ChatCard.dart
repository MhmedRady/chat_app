import 'package:flutter/material.dart';

import '../Const.dart';

class ChatCard extends StatelessWidget {

  final chat;
  final press;

  const ChatCard({Key key, this.chat, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Column(
      children: [
        InkWell(
          onTap: press,
          radius: 5.5,
          child: Container(
            // margin: const EdgeInsets.only(top: cMainPadding/2),
            padding: const EdgeInsets.symmetric(
                horizontal: cMainPadding*2,
                vertical: cMainPadding*2*.50
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                      CircleAvatar(
                        radius: cMainPadding*3,
                        backgroundColor: cBorderColor,
                        child: CircleAvatar(
                          radius: cMainPadding*3-2,
                          backgroundImage: AssetImage(chat.image),
                        ),
                      ),
                    chat.isActive ? activeGreen(context):SizedBox()
                  ],
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(cMainPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(chat.name,style: Theme.of(context).textTheme.button.copyWith(color: Colors.black87,fontSize: 15),),
                          SizedBox(height: 5,),
                          Opacity(opacity: .7,child: Text(chat.lastMessage,maxLines: 1,overflow: TextOverflow.ellipsis,)),
                        ],
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Opacity(
                      opacity: 0.8,
                      child: Text(chat.time),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: cMainPadding*2,right: cMainPadding*2),
          child: Divider(height: 2.0,color: cDarkColor.withOpacity(.3),),
        )
      ],
    );
  }

  // IS ACTIVE GREEN POINT
  static Positioned activeGreen(BuildContext context){
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        height: cMainPadding*2,
        width: cMainPadding*2,
        decoration: BoxDecoration(
            color: cPrimaryColor,
            shape: BoxShape.circle,
            border: Border.all(
                color: Theme.of(context).scaffoldBackgroundColor,
                width: 3
            )
        ),
      ),
    );
  }

}
