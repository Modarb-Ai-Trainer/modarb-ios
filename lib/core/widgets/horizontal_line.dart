import 'package:flutter/material.dart';
import 'package:modarb_app/core/theming/colors.dart';

class DividerLine extends StatelessWidget{
  const DividerLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorsManager.lightWhite,
      height: 1.0,
    );
  }
}
