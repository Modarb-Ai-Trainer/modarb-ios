import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';

class ExerciseLibraryTab extends StatelessWidget{
  const ExerciseLibraryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              'assets/images/body.png',
              scale: 4,
            ),
            Positioned(
              right: 20.h,
              top: 25.h,
                child: itemOfBody(context)),
            Positioned(
                right: 30.h,
                top: 110.h,
                child: itemOfBody(context)),
            Positioned(
                right: 50.h,
                top: 170.h,
                child: itemOfBody(context)),
            Positioned(
                right: 45.h,
                top: 250.h,
                child: itemOfBody(context)),


            Positioned(
              left: 30.h,
              top: 50.h,
                child: itemOfBody(context)),
            Positioned(
              left: 15.h,
              top: 110.h,
                child: itemOfBody(context)),
            Positioned(
              left: 5.h,
              top: 170.h,
                child: itemOfBody(context)),
            Positioned(
              left: 20.h,
              top: 220.h,
                child: itemOfBody(context)),
            Positioned(
              left: 30.h,
              top: 290.h,
                child: itemOfBody(context)),
            Positioned(
              left: 10.h,
              bottom: 60.h,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsManager.mainPurple, width: 2), // Change the color and width here
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.repeat_outlined,
                      size: 30,
                        color: ColorsManager.mainPurple,
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemOfBody(BuildContext context){
    return GestureDetector(
      onTap: (){
        context.pushNamed(Routes.homePage);
      },
        child: Container(
          width: 100.0,
          height: 50.0,
          color: Colors.transparent,
        ),
    );
  }
}

