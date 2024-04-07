import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/before_Warming.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/exercise2.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/exersice1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WarmScreen extends StatefulWidget{

  const WarmScreen({Key? key}) : super(key: key);

  @override
  State<WarmScreen> createState() => _WarmScreenState();
}

class _WarmScreenState extends State<WarmScreen> {
  var warmController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h,),
          child: Column(
            children: [
              SmoothPageIndicator(
                controller: warmController,
                effect:  const ExpandingDotsEffect(
                  dotHeight: 8,
                  expansionFactor: 1.5,
                  spacing: 15 ,
                  dotWidth: 60,
                  dotColor: Colors.grey,
                  activeDotColor: ColorsManager.mainPurple,
                ),
                count: 4,

              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorsManager.lightPurple,
                      child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.close),
                      ),
                    ),
                    horizontalSpace(40),
                    Text(
                      'Warms up',
                      style: TextStyles.font19White700,

                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 500.h,
                width: double.infinity,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: warmController,
                  children: const [
                    /// add the before warming screen in the state
                    // BeforeWarming(),
                    Exercise1(),
                    Exercise2(),
                    Exercise2(),
                    Exercise1(),
                  ],
                  onPageChanged: (value){
                    setState(() {
                      index = value;
                    });
                  },

                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (){
                        warmController.previousPage(
                          duration: const Duration(
                            seconds: 1,
                          ),
                          curve: Curves.decelerate,
                        );
                      },
                      icon: const Icon(Icons.arrow_circle_left_outlined,
                        color:ColorsManager.mainPurple,
                        size: 34,
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.check_circle_outline_sharp,
                        color:ColorsManager.mainPurple,
                        size: 44,
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        warmController.nextPage(
                          duration: const Duration(
                            seconds: 1,
                          ),
                          curve: Curves.decelerate,
                        );
                      },
                      icon: const Icon(Icons.arrow_circle_right_outlined,
                        color:ColorsManager.mainPurple,
                        size: 34,
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
