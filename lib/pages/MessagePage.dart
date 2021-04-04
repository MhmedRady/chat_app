import 'package:chat_app/models/MessagesBody.dart';
import 'package:flutter/material.dart';

import '../Const.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(context),
      body: MessagesBody(),
    );
  }

  AppBar topAppBar(BuildContext context){
    return AppBar(
      titleSpacing: 0.0,
      leadingWidth: 90.5,
      leading: MaterialButton(
          padding: EdgeInsets.all(4.5),
          onPressed: (){
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.8,left: 0),
                child: Icon(Icons.chevron_left,size: cMainPadding*3,color: cCustomWhite,),
              ),
              CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage("assets/images/chat/img (2).jpg"),
              ),
            ],
          )
      ),
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                  color: cCustomWhite,
                  child: Text(titleCase("M7med Rady"),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.w500,color: cEE),
                  )
              ),
              Title(color: cCustomWhite,
                  child: Text(titleCase("Active now")
                    ,overflow: TextOverflow.ellipsis
                    ,maxLines: 1
                    ,style: Theme.of(context).textTheme.bodyText2
                        .copyWith(
                        fontWeight: FontWeight.w400,
                        color: cEE
                    ),
                  )
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.phone), onPressed: (){}),
        IconButton(icon: Icon(Icons.videocam_rounded), onPressed: (){}),
        SizedBox(width: cMainPadding,)
      ],
    );
  }
}
