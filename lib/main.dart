import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Const.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
        backgroundColor: cCustomWhite,
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        canvasColor: cCustomWhite,

      ),
      home: SplashScreen(),
    );
  }
}
