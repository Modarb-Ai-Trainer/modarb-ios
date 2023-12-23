import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/features/splash/ui/widgets/background_image.dart';
import 'package:modarb_app/features/splash/ui/widgets/sliding_man.dart';

import '../../../../core/routing/routes.dart';
import '../widgets/animated_size_land.dart';

class FirstSplashScreen extends StatefulWidget {
  const FirstSplashScreen({Key? key}) : super(key: key);

  @override
  State<FirstSplashScreen> createState() => _FirstSplashScreenState();
}

class _FirstSplashScreenState extends State<FirstSplashScreen>  with SingleTickerProviderStateMixin {
  late AnimationController animationController ;
  late Animation <Offset> slidingAnimation ;
  double height = 220.h;
  double width = 220.h;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateWithTransition();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        SlidingMan(slidingAnimation: slidingAnimation),
         Center(
          child: AnimatedSizeLand(
            width: width,
            height: height,
          ),
        ),

      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 700),
    );
    slidingAnimation = Tween<Offset>(
        begin: const Offset(0, .7) ,
        end: Offset.zero,
    ).animate(animationController) ;

    animationController.forward().whenComplete(() => animationController.reverse());
    initSizeAnimation();

  }

  void initSizeAnimation() {
    Future.delayed(
        const Duration(seconds: 2),() {
      setState(() {
        width = width == 220.h?30.h:0.h;
        height = height == 220.h?30.h:0.h ;
      });
    });
  }

  void navigateWithTransition() {
    Future.delayed(
        const Duration(seconds: 2),() {
          context.pushNamed(Routes.lastSplash);
    });
    Future.delayed(
        const Duration(seconds: 4),() {
          context.pushNamed(Routes.loginScreen);
    });
  }
}
