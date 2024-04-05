import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';

class ListViewOfWorkout extends StatelessWidget{
  const ListViewOfWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 16,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(Routes.exerciseDetails);
          },
          child: ListTile(
            title: Text(
              'chest press',
              style: TextStyles.font16White700,
            ),
            subtitle: Text(
              '4 sets x  12-15 reps',
              style: TextStyles.font12White600,
            ),
            leading: SizedBox(
              width: 70.w,
              height: 60.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  'assets/images/Muscles1.png',
                  fit: BoxFit.fill,

                ),
              ),
            ),
            trailing: AppTextButton(
              buttonText: 'chest',
              textStyle: TextStyles.font13White700,
              borderRadius: 20,
              buttonWidth: 70.w,
              buttonHeight: 20.h,
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
