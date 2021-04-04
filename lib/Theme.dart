import 'package:flutter/material.dart';

import 'Const.dart';

ThemeData lightThemeData(BuildContext context){
  return ThemeData.light().copyWith(
    primaryColor: cCustomWhite,
    scaffoldBackgroundColor: cWhite,

  );
}