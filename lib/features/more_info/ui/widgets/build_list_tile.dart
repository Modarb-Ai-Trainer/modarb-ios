import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BuildListTile extends StatelessWidget{
  final String title ;
  final String? image ;
  final IconData? icon ;
  final VoidCallback onTap;

  const BuildListTile({Key? key, required this.title, required this.onTap, this.image, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: ColorsManager.lighterGray,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                SvgPicture.asset(
                  image!,
                  height: 22.h,
                ),
                horizontalSpace(15),
                Text(
                  title,
                  style: TextStyles.font16White700,
                ),
                const Spacer(),
                Icon(
                  icon ?? Icons.arrow_forward_ios,
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
