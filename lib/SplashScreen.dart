import 'package:chat_app/pages/login_With_Logo.dart';
import 'package:flutter/material.dart';

import 'Const.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cCustomWhite,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/pages/img_1.png",fit: BoxFit.cover,),
          Column(
              children: [
                Text(
                    titleCase("welcome to our grouping chat app"),
                    textAlign:TextAlign.center,
                    style: Theme.of(context).textTheme
                        .headline5
                        .copyWith(
                        fontSize: cMainVal*2+4,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87.withOpacity(.7),
                    )
                ),
                Padding(padding: EdgeInsets.all(cMainPadding),
                  child: Padding(
                    padding: const EdgeInsets.only(top: cMainPadding,left: cMainPadding*3,right: cMainPadding*3),
                    child: Text(
                        titleCase("Chat-In is an app that allows you messaging with your friends and family"),
                        textAlign:TextAlign.center,
                        style: Theme.of(context).textTheme
                            .subtitle2
                            .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87.withOpacity(.5))
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                FittedBox(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginLogo()));
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                      label: Text('Start Now'),
                      style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(cCustomBlue),
                          alignment: Alignment.center,
                          backgroundColor: MaterialStateProperty.all(cCustomBlue),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
                      ),
                    )
                ),
                TextButton(onPressed: (){}, child: Text("العربية",style:
                  Theme.of(context).textTheme
                    .button
                    .copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: cCustomBlue
                    ),))
              ],
            )
          ],
        )
      ),
    );
  }
}
