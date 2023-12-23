import 'package:flutter/material.dart';

class AnimatedSizeLand extends StatelessWidget{
  const AnimatedSizeLand({Key? key , required this.width, required this.height}) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
        duration: const Duration(seconds: 1),
        curve: Curves.easeIn,
        child: Image.asset(
          'assets/images/land_splash.png',
          width: width,
          height: height,
        ));
  }
}
