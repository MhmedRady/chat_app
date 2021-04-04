
import 'package:chat_app/Const.dart';
import 'package:chat_app/widgets/MessageField.dart';
import 'package:flutter/material.dart';

import 'ChatContent.dart';

class MessagesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatContent(),
        MessageField(),
      ],
    );
  }
}
