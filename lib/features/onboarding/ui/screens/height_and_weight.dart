import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/features/onboarding/ui/widgets/ruler_of_target_weight.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/ruler_of_height.dart';
import '../widgets/ruler_of_weight.dart';

class HeightAndWeight extends StatelessWidget{
  const HeightAndWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                  'What’s Your height?',
                style: TextStyles.font19White700,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(20),
             const RulerOfHeight(),
            verticalSpace(40),
            Center(
              child: Text(
                  'What’s Your Weight?',
                style: TextStyles.font19White700,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(20),
            const RulerOfWeight(),
            verticalSpace(40),
            Center(
              child: Text(
                  'What’s Your Target weight?',
                style: TextStyles.font19White700,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(20),
            const RulerOfTargetWeight(),
          ],

        ),
      ),
    );
  }
}

