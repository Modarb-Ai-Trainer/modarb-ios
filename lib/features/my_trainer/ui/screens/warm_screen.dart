import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/exercise_start.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/training_bloc_listener.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';

class WarmScreen extends StatelessWidget{

  final int index;
  final List<Exercise> listOfExercise;
  final List<Day> listOfDay;

  const WarmScreen({Key? key, required this.index, required this.listOfExercise, required this.listOfDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<TrainerCubit,TrainerState>(
      listener: (context, state){},
      builder: (context,state){
        final cubit = context.read<TrainerCubit>();
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h,),
              child: Column(
                children: [
                  const TrainingBlocListener(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorsManager.lightPurple,
                          child: IconButton(
                            onPressed: (){
                              cubit.emitClosingTrainer();
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: cubit.warmController,
                          effect:  const ExpandingDotsEffect(
                            dotHeight: 8,
                            expansionFactor: 1.5,
                            spacing: 15 ,
                            dotWidth: 60,
                            dotColor: Colors.grey,
                            activeDotColor: ColorsManager.mainPurple,
                          ),
                          count: listOfExercise.length,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 500.h,
                    width: double.infinity,
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: cubit.warmController,
                      itemBuilder: (BuildContext context, int index) => ExerciseStart(
                        index: index,
                        listOfExercise:listOfExercise ,
                      ),
                      itemCount: listOfExercise.length,
                      onPageChanged: (value){
                        cubit.index = value;
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
                            if(state is CounterChangeOfExercise){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Exercise is not finished yet !',
                                    style: TextStyles.font16White700,
                                  ),
                                  backgroundColor: ColorsManager.lighterGray,
                                  duration: const Duration(seconds: 5),
                                ),
                              );
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Unable to come back to completed exercise!',
                                    style: TextStyles.font16White700,
                                  ),
                                  backgroundColor: ColorsManager.lighterGray,
                                  duration: const Duration(seconds: 5),
                                ),
                              );
                            }

                          },
                          icon: const Icon(Icons.arrow_circle_left_outlined,
                            color:ColorsManager.mainPurple,
                            size: 34,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                            cubit.isDone = true;
                            if(cubit.index == listOfExercise.length - 1){
                              context.pushNamedAndRemoveUntil(Routes.completeWorkout,
                                  arguments: {
                                    'index' : index,
                                    'listOfExercise' :listOfExercise,
                                    'listOfDay' :listOfDay,
                                  },
                                predicate: (Route<dynamic> route) => false,
                                  );
                            }else if(state is CounterChangeOfExercise){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Exercise is not finished yet !',
                                    style: TextStyles.font16White700,
                                  ),
                                  backgroundColor: ColorsManager.lighterGray,
                                  duration: const Duration(seconds: 5),
                                ),
                              );
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Good, Exercise is done !',
                                    style: TextStyles.font16White700,
                                  ),
                                  backgroundColor: ColorsManager.lighterGray,
                                  duration: const Duration(seconds: 5),
                                ),
                              );
                              cubit.warmController.nextPage(
                                duration: const Duration(
                                  seconds: 1,
                                ),
                                curve: Curves.decelerate,
                              );
                            }


                          },
                          icon: const Icon(
                            Icons.check_circle_outline_sharp,
                            color:ColorsManager.mainPurple,
                            size: 44,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'No, Complete exercise first !',
                                  style: TextStyles.font16White700,
                                ),
                                backgroundColor: ColorsManager.lighterGray,
                                duration: const Duration(seconds: 5),
                              ),
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
      },
    );
  }

}
