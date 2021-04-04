import 'package:chat_app/Const.dart';
import 'package:chat_app/widgets/TextMessage.dart';
import 'package:flutter/material.dart';

import 'ChatMessage.dart';

class ChatContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
        itemCount: demoChatMessages.length,
        itemBuilder: (context,msg) => Messages(msgContent: demoChatMessages[msg],)
      )
    );
  }
}

class Messages extends StatelessWidget {
  final msgContent ;

  Messages({this.msgContent});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 0.0,left: cMainPadding,right: cMainPadding,bottom: cMainVal),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: msgContent.isSender ? MainAxisAlignment.end :MainAxisAlignment.start,
        children: [
          !msgContent.isSender
          ? userImg("assets/images/chat/img (8).jpg")
          : Icon(msgContent.messageStatus == MessageStatus.viewed
            ? Icons.check_circle_rounded
            : Icons.check_circle_outline,
            size: cMainVal*1.7,color: cCustomBlue.withOpacity(.9),),
          Padding(
            padding: const EdgeInsets.only(
              bottom: cMainVal*1.5,
              right: cMainPadding-5
              ,left: cMainPadding/2
            ),
            child: Container(
              margin: EdgeInsets.only(top: cMainVal*2),
              padding: EdgeInsets.symmetric(
                horizontal: cMainPadding,
                vertical: cMainPadding/2
              ),
              decoration: BoxDecoration(
                color: msgContent.isSender ? cCustomBlue : cEE.withOpacity(.9),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomRight:msgContent.isSender ? Radius.circular(0):Radius.circular(20),
                    bottomLeft:msgContent.isSender ? Radius.circular(20):Radius.circular(0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: msgContent.isSender ? cCustomBlue.withOpacity(.5) : cDarkWhite.withOpacity(.9),
                    offset: msgContent.isSender ? Offset(-4,5) : Offset(8,7) ,
                    blurRadius: 6
                  )
                ]
              ),
              child:messageContent(msgContent),
              ),
          ),
          msgContent.isSender
          ? userImg("assets/images/chat/img (2).jpg")
          : SizedBox(),
        ],
      ),
    );
  }
  CircleAvatar userImg(String img){
    return CircleAvatar(
      radius: cMainPadding*2,
      backgroundColor: cBorderColor,
      child: CircleAvatar(
        radius: cMainPadding*2-2,
        backgroundImage: AssetImage(img),
      ),
    );
  }
}