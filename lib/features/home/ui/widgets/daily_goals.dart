import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/home/ui/widgets/container_of_add_remove.dart';
import '../../../../core/helper/spacing.dart';

class DailyGoals extends StatelessWidget{
  const DailyGoals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daily Goals',
            style: TextStyles.font19White700,
          ),
          verticalSpace(20),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 140.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      gradient: const LinearGradient(
                        begin: Alignment(-0.00, 1),
                        end: Alignment(1, -1),
                        colors: [Color(0xFFF0EBFF),Color(0xFF997AFF),Color(0xFF5E35E8), ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Water',
                          style: TextStyles.font16White700,
                        ),
                        verticalSpace(20),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 70.w,
                              height: 70.h,
                              child: const CircularProgressIndicator(
                                value: 70,
                                valueColor: AlwaysStoppedAnimation<Color>(ColorsManager.mainWhite),
                                strokeWidth: 5,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '20 cl',
                                  style: TextStyles.font13White700,
                                ),
                                Text(
                                  '/1.52 L',
                                  style: TextStyles.font13White700,
                                ),
                              ],
                            ),
                          ],
                        ),
                        verticalSpace(20),
                        const ContainerOfAddAndRemove(),

                      ],
                    ),
                  ),
                ],
              ),
              horizontalSpace(30),
              Column(
                children: [
                  Container(
                    width: 150.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: ColorsManager.darkGray,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Steps',
                          style: TextStyles.font19White700,
                        ),
                        verticalSpace(10),
                        Text(
                          '2500 \n/8000',
                          style: TextStyles.font13White700,
                        ),
                      ],
                    )

                  ),
                  verticalSpace(15),
                  Container(
                    width: 150.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: ColorsManager.darkGray,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyles.font19White700,
                          ),
                          verticalSpace(10),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.local_fire_department_sharp,
                               color: ColorsManager.mainYellow,
                               size: 20.sp,),
                             horizontalSpace(2),
                             Text(
                               '450',
                               style: TextStyles.font16White700,
                             ),
                             horizontalSpace(5),
                             Text(
                               'kcal',
                               style: TextStyles.font13White400,
                             ),
                           ],
                         ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.alarm,
                               color: ColorsManager.mainYellow,
                               size: 20.sp,),
                             horizontalSpace(5),

                             Text(
                               '1:30',
                               style: TextStyles.font16White700,
                             ),
                             horizontalSpace(5),
                             Text(
                               'hr',
                               style: TextStyles.font13White400,
                             ),
                           ],
                         ),
                        ],
                      ),

                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }


}

