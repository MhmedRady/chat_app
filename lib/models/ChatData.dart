import 'package:flutter/material.dart';

import '../Const.dart';

class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  const Chat({ this.name, this.lastMessage, this.image, this.time, this.isActive}) ;
}

List chatData = [
  Chat(
    image: "assets/images/chat/img (1).jpg",
    isActive: false,
    time: 'now',
    lastMessage: "Hi How Are You?!!",
    name: titleCase("youssef")
  ),
  Chat(
      image: "assets/images/chat/img (2).jpg",
      isActive: true,
      time: "44 second",
      lastMessage: "Ok",
      name: titleCase("M7MED rady")
  ),Chat(
      image: "assets/images/chat/img (8).jpg",
      isActive: false,
      time: "5 minute",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Sara")
  ),Chat(
      image: "assets/images/chat/img (3).jpg",
      isActive: false,
      time: "21 minute",
      lastMessage: "لا انا غير موجود الان سوف نتواصل فيما بعد !!لا انا غير موجود الان سوف نتواصل فيما بعد !!",
      name: titleCase("A7med Ali")
  ),Chat(
      image: "assets/images/chat/img (4).jpg",
      isActive: true,
      time: "37 minute",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Mr: Android")
  ),Chat(
      image: "assets/images/chat/img (7).jpg",
      isActive: false,
      time: "1 hour",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("hind omr")
  ),Chat(
      image: "assets/images/chat/img (15).jpg",
      isActive: true,
      time: "06/21",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Sara")
  ),Chat(
      image: "assets/images/chat/img (5).jpg",
      isActive: true,
      time: "5 hour",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Alaa a7med")
  ),Chat(
      image: "assets/images/chat/img (6).jpg",
      isActive: true,
      time: "yesterday",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Ali Ahmed")
  ),Chat(
      image: "assets/images/chat/img (9).jpg",
      isActive: false,
      time: "1 day",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Hind")
  ),Chat(
      image: "assets/images/chat/img (10).jpg",
      isActive: true,
      time: "2 day",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Nour Ali")
  ),
  Chat(
      image: "assets/images/chat/img (11).jpg",
      isActive: false,
      time: "13 day",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("youssef")
  ),
  Chat(
      image: "assets/images/chat/img (12).jpg",
      isActive: true,
      time: "27 day",
      lastMessage: "Ok",
      name: titleCase("M7MED rady")
  ),
  Chat(
      image: "assets/images/chat/img (13).jpg",
      isActive: false,
      time: "05/19",
      lastMessage: "لا انا غير موجود الان سوف نتواصل فيما بعد !!",
      name: titleCase("A7med Ali")
  ),
  Chat(
      image: "assets/images/chat/img (14).jpg",
      isActive: false,
      time: "05/20",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Mr: Android")
  ),Chat(
      image: "assets/images/chat/img (16).jpg",
      isActive: false,
      time: "07/10",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("New York city")
  ),Chat(
      image: "assets/images/chat/img (17).jpg",
      isActive: true,
      time: "11/27",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Alaa a7med")
  ),Chat(
      image: "assets/images/chat/img (18).jpg",
      isActive: false,
      time: "12/12",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Nour Ali")
  ),Chat(
      image: "assets/images/chat/img (19).jpg",
      isActive: true,
      time: "12/21",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Hind")
  ),Chat(
      image: "assets/images/chat/img (20).jpg",
      isActive: true,
      time: "30/12",
      lastMessage: "Hi How Are You?!!",
      name: titleCase("Nour Ali")
  ),

];