import 'package:flutter/material.dart';

import '../Const.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key key,
    @required this.msgContent,
  }) : super(key: key);

  final msgContent;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width/2,
      child: RichText(
        textAlign: msgContent.isSender ? TextAlign.start: TextAlign.end,
        text: TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: titleCase(msgContent.text),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(
                    fontSize: 18,
                    color:  msgContent.isSender ?cEE:Color(0xFF404040)),
              )
            ]
        ),
      ),
    );
  }
}
