import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';

class ListViewOfWorkout extends StatelessWidget{
  final int index;
  final List<Exercise> listOfExercise;
  final List<Day> listOfDay;
  const ListViewOfWorkout({Key? key, required this.index, required this.listOfExercise, required this.listOfDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfExercise.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(
                Routes.exerciseDetails,
                arguments:{
                  'index': index,
                  'listOfExercise': listOfExercise ,
                  'listOfDay': listOfDay ,
                }
            );
          },
          child: ListTile(
            title: Text(
              '${listOfExercise[index].name}',
              style: TextStyles.font16White700,
            ),
            subtitle: listOfExercise[index].sets != null ? Text(
              ' ${listOfExercise[index].sets} sets * ${listOfExercise[index].reps} reps ',
              style: TextStyles.font12White600,
            ) :Text(
              '${listOfExercise[index].duration} min ',
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
              buttonText: '${listOfExercise[index].category}',
              textStyle: TextStyles.font13White700,
              borderRadius: 20,
              buttonWidth: 70.w,
              buttonHeight: 20.h,
              onPressed: () {
                context.pushNamed(
                  Routes.exerciseDetails,
                    arguments:{
                      'index': index,
                      'listOfExercise': listOfExercise,
                      'listOfDay': listOfDay ,


                    }
                );

              },
            ),
          ),
        );
      },
    );
  }
}
