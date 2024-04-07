import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Exercise2 extends StatelessWidget{
  // final PageController setController ;
  const Exercise2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var setController = PageController();

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/MusclesWorked.png',
            fit: BoxFit.fill,
          ),
        ),
        verticalSpace(10),
        Text(
          'Chest press',
          style: TextStyles.font19White700,
        ),
        verticalSpace(40),
        Text(
          '15 reps',
          style: TextStyles.font28White700.copyWith(
            color: ColorsManager.lightPurple,
          ),
        ),
        verticalSpace(20),
        SizedBox(
          height: 50.h,
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: setController,
            itemCount: 4,


            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Text(
                  'set ${index + 1} / 4',
                  style: TextStyles.font13White700,
                ),
              );
            },

          ),
        ),
        SmoothPageIndicator(
          controller: setController,
          effect:  const ExpandingDotsEffect(
            dotHeight: 15,
            expansionFactor: 1.5,
            spacing: 15 ,
            dotWidth: 15,
            dotColor: Colors.grey,
            activeDotColor: ColorsManager.lightPurple,
          ),
          count: 4,

        ),
      ],
    );
  }
}
