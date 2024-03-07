import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/features/home/ui/widgets/container_of_weeks.dart';
import 'package:modarb_app/features/home/ui/widgets/list_of_plans.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(10.h),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
            radius: 16, // Adjust the size as per your requirement
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_none_sharp,
              size: 32.sp,
              color: ColorsManager.mainPurple,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ContainerOfWeeks(),
            verticalSpace(20),
            const ListOfPlans(),
            verticalSpace(20),
          ],
        ),
      ),
      );
  }
}
