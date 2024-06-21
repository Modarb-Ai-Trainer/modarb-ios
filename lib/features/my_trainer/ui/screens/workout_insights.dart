import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';

class WorkoutInsights extends StatelessWidget{
  final int index;
  final List<Exercise> listOfExercise;
  final List<Day> listOfDay;
  const WorkoutInsights({Key? key, required this.index, required this.listOfExercise, required this.listOfDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
    builder: (context,state){
      final cubit = context.read<TrainerCubit>();
      final int totalMin = cubit.getTotalMinDuration(listOfDay);
      final int totalMax = cubit.getTotalMaxDuration(listOfDay);
      return Scaffold(
        body: SafeArea(
          child: Stack(
              children:[
                Container(
                  constraints:  const BoxConstraints.expand(),
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.1, .8),
                      end: Alignment(0.01, -1),
                      colors: [Color(0xFF5E35E8), Color(0x00D9D9D9)],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 60.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Workout\n insights',
                        style: TextStyles.font28White700,
                      ),
                      verticalSpace(30),
                      Text(
                        'Day ${listOfDay[index].dayNumber}',
                        style: TextStyles.font19White700,
                      ),
                      Text(
                        '${listOfDay[index].dayType} ',
                        style: TextStyles.font19White700,
                      ),
                      verticalSpace(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises\n        ${listOfDay[index].totalNumberExercises}',
                            style: TextStyles.font13White700,
                          ),
                          listOfDay[index].exercises[index].sets != null ? Text(
                            ' sets\n ${ listOfDay[index].exercises[index].sets} ',
                            style: TextStyles.font13White700,
                          ) :Text(
                            'sets \n   0',
                            style:TextStyles.font13White700,
                          ),
                          Text(
                            'Duration Range\n  $totalMin -$totalMax s',
                            style: TextStyles.font13White700,
                          ),
                        ],
                      ),
                      verticalSpace(40),
                      Text(
                        'Post Workout meal ',
                        style: TextStyles.font19White700,
                      ),
                      verticalSpace(20),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index)=> Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/nutrition.png'),
                          ),
                          itemCount: 2,

                        ),
                      ),
                      verticalSpace(20),
                      AppTextButton(
                          buttonText: 'Finish',
                          textColor: ColorsManager.mainPurple,
                          backgroundColor: Colors.white,
                          onPressed: (){
                            context.pushNamedAndRemoveUntil(Routes.homePage, predicate: (Route<dynamic> route) => false);
                          }
                      ),
                    ],
                  ),
                ),
              ]
          ),
        ),
      );
    },
    );
  }
}
