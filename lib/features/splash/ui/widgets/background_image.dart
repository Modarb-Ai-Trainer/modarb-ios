import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget{
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: const BoxConstraints.expand(),
      foregroundDecoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.01, -1.00),
          end: Alignment(0.01, 1),
          colors: [
            Color(0xFF08060E),
            Color(0xFF725FB2),
            Color(0xFF997AFF),
          ],
        ),
      ),
    );
  }
}