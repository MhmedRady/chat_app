import 'package:chat_app/Const.dart';
import 'package:chat_app/widgets/PrimaryBtn.dart';
import 'package:flutter/material.dart';

import 'ChatScrean.dart';

class LoginLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: cCustomWhite,
        body: Container(
          padding: EdgeInsets.all(cMainPadding*2),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/pages/img_2.png"),
              PrimaryBtn(text: 'Login',icon: Icons.login,color: cCustomBlue.withOpacity(0.7),press: (){
                // ######## LOGIN PAGE
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
              },padding: EdgeInsets.all(cMainPadding),),
              SizedBox(height: 30,),
              PrimaryBtn(text: 'Signup',icon: Icons.person_add_alt,color: Colors.green.shade600.withOpacity(0.7),
                press: (){
                  // ######## SIGNUP PAGE
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                },
                padding: EdgeInsets.all(cMainPadding),),
            ],
          ),
        ),
      );
  }
}
