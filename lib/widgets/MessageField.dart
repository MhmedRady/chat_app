import 'package:flutter/material.dart';

import '../Const.dart';

class MessageField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: cMainPadding),
      padding: EdgeInsets.symmetric(
        horizontal: cMainPadding*2,
        vertical: cMainPadding*1.0,
      ),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0,-2),
                color: cDarkWhite,
                spreadRadius: 1.5,
                blurRadius: 10
            )
          ],
          color: cCustomWhite
        // color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: SafeArea(
        child: Row(
          children: [
            SizedBox(
                width: cMainPadding*4,
                child: FloatingActionButton(child: Icon(Icons.mic),onPressed: (){},isExtended: false,)),
            // IconButton(icon: Icon(Icons.mic,color: cCustomBlue,),padding: EdgeInsets.zero, onPressed: (){}),
            SizedBox(width: cMainPadding*.75,),
            Expanded(child: Container(
              height: cMainPadding*4,
              padding: EdgeInsets.symmetric(
                  horizontal: cMainPadding*2
              ),
              decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset(0,5),
                        color: cDarkWhite.withOpacity(.5),
                        blurRadius: 5
                    )
                  ],
                  color: cEE.withOpacity(.5),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Row(
                textBaseline: TextBaseline.ideographic,
                children: [
                  FieldButton(Icons.sentiment_satisfied_alt_outlined,(){},context),
                  Expanded(
                    child: TextField(
                      onTap: (){},
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: -5,left: cMainPadding,right: cMainPadding),
                          filled: true,
                          fillColor: cEE.withOpacity(.5),
                          hintText: titleCase("new message ..!"),
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none
                      ),
                    ),
                  ),
                  FieldButton(Icons.attach_file_outlined,(){},context),
                  FieldButton(Icons.camera_alt_outlined,(){},context),
                ],
              ),
            )
            ),

          ],
        ),
      ),
    );
  }
  SizedBox FieldButton(IconData icon,Function press,BuildContext context){
    return SizedBox(
        width: cMainPadding*3,
        child: FloatingActionButton(
          backgroundColor: cEE,
          elevation: 0.0,
          child: Icon(icon,
            color: Theme.of(context).textTheme.bodyText1.color.withOpacity(.6),
          ),
          onPressed: press,
          isExtended: false,)
    );
  }
}
