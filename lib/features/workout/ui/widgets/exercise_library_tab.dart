import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/workout/logic/workout_cubit.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';

class ExerciseLibraryTab extends StatelessWidget{
  const ExerciseLibraryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit,WorkoutState>(
      builder: (context,state){
        final cubit = context.read<WorkoutCubit>();
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Center(
                    child: Text(
                      'All Muscles',
                      style: TextStyles.font19White700,
                    ),
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 0.8,
                ),
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) => itemOfList(context),
                  childCount: 8,
                ),
              ),
            ],
          ),
        );
        // return SingleChildScrollView(
        //   child: Stack(
        //     children: [
        //       cubit.switchButton ? frontOfBody(context): backOfBody(context),
        //       Positioned(
        //         left: 20.h,
        //         bottom: 70.h,
        //         child: Container(
        //           decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             border: Border.all(color: ColorsManager.mainPurple, width: 2), // Change the color and width here
        //           ),
        //           child: CircleAvatar(
        //             radius: 25,
        //             backgroundColor: Colors.transparent,
        //             child: IconButton(
        //               onPressed: (){
        //                 cubit.switchChange();
        //               },
        //               icon: const Icon(Icons.repeat_outlined,
        //                 size: 30,
        //                 color: ColorsManager.mainPurple,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // );
      },
    );
  }

  Widget itemOfList(BuildContext context) =>  GestureDetector(
    onTap: (){
      context.pushNamed(Routes.exerciseOfCategory);
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.lighterGray,
          borderRadius:BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/test.png'),
            Text(
              'Shoulder',
              style:TextStyles.font13White700,
            ),
            Text(
              'Shoulder press',
              style:TextStyles.font13White700 ,

            ),
          ],
        ),
      ),
    ),
  );


  Widget itemOfBody(BuildContext context){
    return GestureDetector(
      onTap: (){
        context.pushNamed(Routes.exerciseOfCategory);
      },
        child: Container(
          width: 100.0,
          height: 50.0,
          color: Colors.transparent,
        ),
    );
  }


  Widget frontOfBody(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/body.png',
              scale: 4,
            ),
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
              top: 260.h,
              child: itemOfBody(context)),


          Positioned(
              left: 30.h,
              top: 55.h,
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
              top: 230.h,
              child: itemOfBody(context)),
          Positioned(
              left: 30.h,
              top: 300.h,
              child: itemOfBody(context)),
        ],
      ),
    );
  }

  Widget backOfBody(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/backBody.png',
              scale: 4,
            ),
          ),
          Positioned(
              right: 20.h,
              top: 30.h,
              child: itemOfBody(context)),
          Positioned(
              right: 40.h,
              top: 140.h,
              child: itemOfBody(context)),
          Positioned(
              right: 50.h,
              top: 220.h,
              child: itemOfBody(context)),
          Positioned(
              right: 45.h,
              top: 300.h,
              child: itemOfBody(context)),


          Positioned(
              left: 30.h,
              top: 55.h,
              child: itemOfBody(context)),
          Positioned(
              left: 15.h,
              top: 120.h,
              child: itemOfBody(context)),
          Positioned(
              left: 40.h,
              top: 200.h,
              child: itemOfBody(context)),
          Positioned(
              left: 20.h,
              top: 280.h,
              child: itemOfBody(context)),
          Positioned(
              left: 30.h,
              top: 400.h,
              child: itemOfBody(context)),
        ],
      ),
    );
  }

}

