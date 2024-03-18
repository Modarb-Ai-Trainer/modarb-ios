import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BuildListTile extends StatelessWidget{
  final String title ;
  final IconData icon;
  final VoidCallback onTap;

  const BuildListTile({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: Container(
          height: 60.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: ColorsManager.lighterGray,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 30.sp,
                  color: ColorsManager.mainPurple,
                ),
                horizontalSpace(15),
                Text(
                  title,
                  style: TextStyles.font19White700,
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: ColorsManager.lightWhite,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
