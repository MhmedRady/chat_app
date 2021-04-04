import 'package:flutter/material.dart';

import '../Const.dart';

class FragmentBtn extends StatelessWidget {
  final bool isFilled;
  final VoidCallback isPress;
  final String isText;

  const FragmentBtn({Key key, this.isFilled, this.isPress, this.isText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: isPress,
        padding: EdgeInsets.all(cMainPadding+cMainPadding*.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(width: 2.5,color: cBorderColor),
        ),
      color: isFilled?cWhite:Colors.transparent,
      child: Text(isText.toUpperCase(),
        style: Theme.of(context).textTheme.button
            .copyWith(
            color: isFilled?cCustomBlue:cEE,
            fontSize: 12
        ),
      ),
    );
  }
}
