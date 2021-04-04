import 'package:chat_app/Const.dart';
import 'package:chat_app/models/ChatData.dart';
import 'package:chat_app/models/ChatMessage.dart';
import 'package:chat_app/pages/MessagePage.dart';
import 'package:chat_app/widgets/ChatCard.dart';
import 'package:chat_app/widgets/Fragment_Btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedBottomNavigationBar = 2;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cCustomWhite,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: cCustomBlue.withOpacity(.9),
        title: Text(titleCase("chat"),style: Theme.of(context).textTheme
            .bodyText2
            .copyWith(
          fontSize: cMainVal*2+4,
          fontWeight: FontWeight.w400,
          color: cEE,
        ),),
        brightness: Brightness.light,
        actions: [
          IconButton(icon: Icon(Icons.search,color: cEE,), onPressed: (){}),
          IconButton(icon: Icon(Icons.menu,color: cEE,), onPressed: (){}),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(cMainPadding*2, cMainPadding*1, 0, cMainPadding*1),
            decoration: BoxDecoration(
                color: cCustomBlue.withOpacity(.9),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      offset: Offset(0,cMainPadding),
                      color: cDarkWhite,
                      blurRadius: cMainPadding/2
                  )
                ]
            ),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  FloatingActionButton(onPressed: (){},backgroundColor: Colors.transparent,elevation: 0.0,child: Icon(Icons.camera_alt,size: 30,),),
                  Positioned(left: cMainPadding*4.2,top:50,child: SizedBox(width: 10,child: Divider(height: 10,thickness: 50,indent: 10,))),
                  Positioned(
                    right: 1,
                    left: 70,
                    top: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 0.0),
                      height: 90.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: chatData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return chatData[index].isActive
                              ? isActive(chatData[index].image, chatData[index].name)
                              :SizedBox();
                        },
                      ),
                    ),
                  )
                ],
              ),
            )

// // ####### ACTIVE USERS WIDGETS
//
// // GROUPS WIDGETS
//                 // FragmentBtn(
//                 //   isFilled: true,
//                 //   isPress: (){},
//                 //   isText: "chats",
//                 // ),
//                 // FragmentBtn(
//                 //   isFilled: false,
//                 //   isPress: (){},
//                 //   isText: "groups",
//                 // ),
//                 // FragmentBtn(
//                 //   isFilled: false,
//                 //   isPress: (){},
//                 //   isText: "status",
//                 // ),
//                 // FragmentBtn(
//                 //   isFilled: false,
//                 //   isPress: (){},
//                 //   isText: "calls",
//                 // ),
//               ],
//             ),
          ),

          Expanded(child: ListView.builder(
            itemCount: chatData.length,
            itemBuilder: (context,index) =>  ChatCard(chat:chatData[index],press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MessagePage()));
            },),
            )
          )
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(0,-10),
              blurRadius: 25
            )
          ]
        ),
        child: BottomNavigationBar(

          backgroundColor: cCustomWhite,
          selectedItemColor: cBorderColor,
          unselectedItemColor: cDarkColor.withOpacity(.7),
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,color: cDarkColor.withOpacity(.5),fontSize: 14,),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,color: cDarkColor),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedBottomNavigationBar,

          onTap: (val){
            setState(() {
              _selectedBottomNavigationBar = val;
            });
          },
          items: [

            BottomNavigationBarItem(
                icon: Icon(Icons.group_outlined),
                label: titleCase("groups")
            ),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/pages/smiling-emoji.png",width: 35,),
                label: titleCase("status")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: titleCase("message"),
              // backgroundColor: cWhite
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: titleCase("call")
            ),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 22,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/chat/img (2).jpg"),
                  ),
                ),
                label: titleCase("profile")
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: cBorderColor,
        child: Icon(Icons.person_add_alt_1_sharp,size: 30,color: cCustomWhite,),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
  InkWell isActive (String img,String name){
    return
      InkWell(
        child:
        Column(
          children: [
            Container(
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: cEE.withOpacity(.7),
                    width: 4),
                shape: BoxShape.circle,
              ),
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> MessagePage()));
                },
                child: CircleAvatar(
                  radius: cMainPadding*3-2,
                  backgroundImage: AssetImage(img),
                ),
              ),
            ),
            Container(
              width: 70,
              alignment: Alignment.center,
              child: Text(titleCase(name),
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.button
                    .copyWith(color: cEE),
              ),
            )
          ],
        ),
      );
  }
}



