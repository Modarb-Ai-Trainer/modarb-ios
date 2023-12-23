import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingMan extends StatelessWidget{
  const SlidingMan({Key? key, required this.slidingAnimation}) : super(key: key);

  final Animation<Offset> slidingAnimation;


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
            position: slidingAnimation,

            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.h),
              child: Image.asset(
                  'assets/images/man_splash.png',
                  width: 300.h,
                  height: 300.h,
              ),
            ),
          );
        }
    );
  }
}
