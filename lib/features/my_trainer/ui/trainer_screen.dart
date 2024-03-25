import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/overview_widget.dart';

class TrainerScreen extends StatefulWidget {
  const TrainerScreen({Key? key}) : super(key: key);

  @override
  State<TrainerScreen> createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 230.h,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.only(
                    top: 30.h,
                      right: 15.h,
                      left: 15.h,),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppVerticalDivider(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Your smart trainer',
                                style: TextStyles.font23White700,
                              ),
                              Text(
                                'Dynamic workouts, personalized\n advice, and constant evolution\n with your progress',
                                style: TextStyles.font13White700,
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/trainer.png',
                            scale: 1.40,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.w),
                        child: Container(
                          height: 45.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ColorsManager.lighterGray,
                          ),
                          child: Row(
                            children: [
                              AppTextButton(
                                buttonText:'My plan',
                                textStyle: TextStyles.font13White700,
                                buttonWidth: 150,
                                buttonHeight: 45,
                                backgroundColor: isSelect ? ColorsManager.mainPurple : ColorsManager.lighterGray,
                                onPressed: () {},
                              ),
                              AppTextButton(
                                buttonText:'My plan',
                                textStyle: TextStyles.font13White700,
                                buttonWidth: 150,
                                buttonHeight: 45,
                                backgroundColor: isSelect ? ColorsManager.mainPurple : ColorsManager.lighterGray,
                                onPressed: () {},
                              ),

                              // Expanded(
                              //   flex: 1,
                              //   child: GestureDetector(
                              //     onTap: () {
                              //       setState(() {
                              //         isSelect = !isSelect;
                              //       });
                              //     },
                              //     child: Container(
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(16),
                              //         color: isSelect ? ColorsManager.mainPurple : ColorsManager.lighterGray,
                              //
                              //       ),
                              //     child: Center(
                              //       child: Text(
                              //         'My plan',
                              //         style: TextStyles.font13White700,
                              //       ),
                              //     ),
                              //     ),
                              //   ),
                              // ),
                              // Expanded(
                              //   flex: 1,
                              //   child: GestureDetector(
                              //     onTap: () {
                              //       setState(() {
                              //         isSelect = !isSelect;
                              //       });
                              //     },
                              //     child: Container(
                              //       decoration: BoxDecoration(
                              //         borderRadius: const BorderRadius.only(
                              //           topRight: Radius.circular(16),
                              //           bottomRight: Radius.circular(16),
                              //         ),
                              //         color: isSelect ? ColorsManager.mainPurple : ColorsManager.lighterGray,
                              //       ),
                              //       child: Center(
                              //         child: Text(
                              //           'Custom workout',
                              //           style: TextStyles.font13White700,
                              //         ),
                              //       ),
                              //   ),
                              // ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SliverFillRemaining(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OverViewWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
