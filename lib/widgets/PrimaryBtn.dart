import 'package:chat_app/Const.dart';
import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback press;
  final Color color;
  final EdgeInsets padding;

  const PrimaryBtn({Key key, this.text, this.press, this.color, this.padding = const EdgeInsets.all(cMainPadding*75), this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return MaterialButton(onPressed: press,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40))
      ),
      padding: padding,
      color: color,
      minWidth: mediaSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: Theme.of(context).textTheme.subtitle1.copyWith(color: cWhite,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(left: cMainPadding,right: cMainPadding/2),
            child: Icon(icon,color: cDarkWhite,),
          )
        ],
      ),
    );
  }
}
