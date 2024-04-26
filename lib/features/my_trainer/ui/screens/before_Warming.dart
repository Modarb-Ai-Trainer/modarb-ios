import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class BeforeWarming extends StatefulWidget{
  const BeforeWarming({Key? key}) : super(key: key);

  @override
  State<BeforeWarming> createState() => _BeforeWarmingState();
}


class _BeforeWarmingState extends State<BeforeWarming> {

  int _counter = 15;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/trainer.png',
              scale: 1.5,
            ),
          ),
          verticalSpace(20),
          Container(
            decoration: BoxDecoration(
              color: ColorsManager.lightPurple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.0),
              child:Column(
                children: [
                  Text(
                    'I will Guide you through your entire workout',
                    style: TextStyles.font13White700.copyWith(
                      height: 1.15,
                      decoration: TextDecoration.none,

                    ),

                  ),
                  verticalSpace(10),
                  Text(
                    'Get ready',
                    style: TextStyles.font16White700.copyWith(
                      height: 1.15,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(10),
                  Text(
                    '$_counter',
                    style: TextStyles.font16White700.copyWith(
                      height: 1.15,
                      decoration: TextDecoration.none,

                    ),
                  ),
                ],
              ),
          ),
          ),
          verticalSpace(20),
          Text(
            'Warms up :',
            style: TextStyles.font19White700.copyWith(
              decoration: TextDecoration.none,

            ),


          ),
          verticalSpace(20),
          Image.asset('assets/images/warming.png',
            scale: 1.8,
          ),
        ],
      ),
    );
  }


}


