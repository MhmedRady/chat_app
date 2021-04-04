import 'package:chat_app/widgets/AudioMessage.dart';
import 'package:chat_app/widgets/ImageMessage.dart';
import 'package:chat_app/widgets/TextMessage.dart';
import 'package:chat_app/widgets/VideoMessage.dart';
import 'package:flutter/material.dart';

import 'models/ChatMessage.dart';

const double cMainPadding = 10.0;
const double cMainVal = 10.0;

const Color cWhite = Colors.white;
const Color cCustomWhite = Color(0xFFFFFFFF);
const Color cDarkWhite = Color(0xFFCCCCCC);
const Color cEE = Color(0xFFEEEEEE);
const Color cDarkColor = Color(0xFF202020);
const Color cPrimaryColor = Color(0xFF00BF60);
const Color cWarningColor = Color(0xFF3BB1C);
const Color cErrorColor = Color(0xFF03738);
const Color cBorderColor = Color(0xff4dabf7);
const Color cCustomBlue = Color(0xFF2B7DE9);

String titleCase(String text) {
  if (text.length <= 1) return text.toUpperCase();
  var words = text.split(' ');
  var capitalized = words.map((word) {
    var first = word.substring(0, 1).toUpperCase();
    var rest = word.substring(1);
    return '$first$rest';
  });
  return capitalized.join(' ');
}


// #### MESSAGE COTENT DATA TYBE ....!

messageContent(ChatMessage msgContent){
  switch (msgContent.messageType){

    case ChatMessageType.text:
        return TextMessage(msgContent: msgContent);
      break;

    case ChatMessageType.audio:
        return AudioMessage(msgContent: msgContent,);
      break;

    case ChatMessageType.image:
        return ImageMessage(msgContent: msgContent,);
      break;

    case ChatMessageType.video:
        return VideoMessage(msgContent: msgContent,);
      break;

    default:
        return SizedBox();
      break;
  }
}