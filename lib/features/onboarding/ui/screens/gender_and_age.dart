import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';
import '../../../../core/helper/spacing.dart';
import '../widgets/male_and_female.dart';

class GenderAndAge extends StatefulWidget{
  const GenderAndAge({Key? key}) : super(key: key);

  @override
  State<GenderAndAge> createState() => _GenderAndAgeState();
}

class _GenderAndAgeState extends State<GenderAndAge> {
  int selectedAge = 1;

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
                'What’s Your gender ?',
                style: TextStyles.font19White700,
              ),
            ),
            verticalSpace(30),
            const MaleAndFemale(),
            verticalSpace(30),
            Center(
              child: Text(
                'How old are you ?',
                style: TextStyles.font19White700,
              ),
            ),
            SizedBox(
              height: 250.h,
              child: CupertinoPicker(
                  itemExtent: 32.0,
                  squeeze: .8,
                  scrollController: FixedExtentScrollController(initialItem: 0),
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      selectedAge = index + 1; // Add 1 to make the age start from 1
                    });
                  },
                  children: List.generate(100, (index) {
                    return Center(
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyles.font20White600,
                      ),
                    );
                  }),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
