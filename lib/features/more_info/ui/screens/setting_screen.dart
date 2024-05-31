import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class SettingScreen extends StatelessWidget{
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text('Settings',
          style: TextStyles.font23White700,
        ),

      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
              [
                buildItem(
                    title: 'App Appearance ',
                    onTap: (){},
                ),
                buildItem(
                    title: 'Privacy ',
                    onTap: (){},
                ),
                buildItem(
                    title: 'Push Notifications ',
                    onTap: (){},
                ),
                buildItem(
                    title: 'Terms and conditions',
                    onTap: (){},
                ),
                buildItem(
                    title: 'Log out',
                    icon: Icons.logout_outlined,
                    onTap: (){},
                ),
              ]
          ))
        ],
      ),
    );
  }

  Widget buildItem({required title,IconData? icon, required onTap}) {
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
                Text(
                  title,
                  style: TextStyles.font19White700,
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
