import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modarb_app/core/theming/colors.dart';

class BottomNavigationOfHome extends StatelessWidget {

  final ValueChanged<int> onTap;

  const BottomNavigationOfHome({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: ColorsManager.darkGray,
      color: ColorsManager.lightGray,
      buttonBackgroundColor: ColorsManager.mainPurple,
      items:  [
        CurvedNavigationBarItem(
          child: SvgPicture.asset('assets/icons/Vector_home.svg',
            height: 26.sp,
          ),
          label: 'Home',
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset('assets/icons/Vector_trainer.svg',
            height: 28.sp,
          ),
          label: 'My trainer',
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset('assets/icons/Vector_workout.svg',
            height: 28.sp,
          ),
          label: 'Workouts',
        ),
        CurvedNavigationBarItem(
          child:SvgPicture.asset('assets/icons/vector_nutri.svg',
            height: 28.sp,
          ),
          label: 'NutriGuide',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.more_horiz,
            size: 30.sp,),
          label: 'More',
        ),
      ],
      onTap: onTap,

    );
  }
}
