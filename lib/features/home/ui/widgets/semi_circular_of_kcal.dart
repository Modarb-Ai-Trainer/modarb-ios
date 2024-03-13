import 'package:flutter/material.dart';
import 'package:modarb_app/core/theming/colors.dart';

class SemiCircularOfKcal extends StatelessWidget {
  const SemiCircularOfKcal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: const Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: ColorsManager.mainPurple,
          ),
          CircleAvatar(
            radius: 75,
            backgroundColor: ColorsManager.lightGray,
          ),
        ],
      ),
    );
  }
}



class CustomClipPath extends CustomClipper<Path> {
  var radius=5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height / 2);
    path.arcToPoint(
      Offset(size.width, size.height / 2),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

