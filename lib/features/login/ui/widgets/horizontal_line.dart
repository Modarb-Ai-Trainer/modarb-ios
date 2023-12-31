import 'package:flutter/material.dart';
import 'package:modarb_app/core/theming/styles.dart';

class HorizontalLine  extends StatelessWidget{
  const HorizontalLine(
      {Key? key,
    required this.text,
    required this.height}) : super(key: key);

  final String text;
  final double height;
  @override
  Widget build(BuildContext context) {

    return Row(children: <Widget>[
      Expanded(
        child:Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Divider(
              color: Colors.grey,
              height: height,
            )),
      ),
      Text(
          text,
        style: TextStyles.font13White700.copyWith(
          decoration: TextDecoration.none,
        ),
      ),
      Expanded(
        child:Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: Colors.grey,
              height: height,
            )),
      ),
    ]);
  }
}
