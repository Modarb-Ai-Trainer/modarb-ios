import 'package:flutter/material.dart';

import '../widgets/background_image.dart';

class LastSplashScreen extends StatelessWidget{
  const LastSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Center(
          child: Image.asset(
            'assets/images/all_image_splash.png',
            width: 350.0,
            height: 350.0,
          ),
        ),

      ],
    );
  }
}
