import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/sheet_of_adding_exercises.dart';

class SheetOfAdding extends StatelessWidget{
  const SheetOfAdding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state) {
        var cubit = context.read<TrainerCubit>();
        return Container(
          decoration: const BoxDecoration(
            color: ColorsManager.darkGray,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: (){
                  context.pop();
                },
                icon: const Icon(Icons.close),
              ),
              verticalSpace(20),
              GestureDetector(
                onTap: (){
                  cubit.getFilterExercise();
                  final result = showModalBottomSheet<List<String>>(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return const SheetOfAddingExercises();
                    },
                  ) as List<String>;
                  if (result.isNotEmpty) {
                    cubit.updateSelectedExercises(result);
                  }else{
                    const Center(child: Text('No data here to show '));

                }
                },
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2), // Change the color and width here
                      ),
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.add),
                      ),
                    ),
                    horizontalSpace(20),
                    Text(
                      'Add exercise',
                      style:TextStyles.font19White700,
                    ),

                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cubit.resultSelected.length,
                  itemBuilder: (context,index) => itemOfListExercise(context,cubit.resultSelected),
                ),
              )
            ],
          ),
        );
      },
    );
  }
  Widget itemOfListExercise(BuildContext context,exercise) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: ListTile(
        title: Text(
          exercise.name!,
          style: TextStyles.font16White700,
        ),
        subtitle: Text(
          exercise.category!,
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
      ),
    );
  }

}
