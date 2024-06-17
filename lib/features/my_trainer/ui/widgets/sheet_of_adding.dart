import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
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
        return SafeArea(
          child: Container(
           color: ColorsManager.darkGray,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (){
                    context.pop();
                  },
                  icon: const Icon(Icons.close),
                ),
                verticalSpace(20),
                GestureDetector(
                  onTap: () async {
                    cubit.getFilterExercise();
                    final result = await showModalBottomSheet<List<String>>(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return const SheetOfAddingExercises();
                      },
                    );
                    if (result!.isNotEmpty) {
                      cubit.updateSelectedExercises(result);
                    }else{
                      const Center(child: Text('No data here to show '));
          
                  }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
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
                ),
                verticalSpace(20),
                if(cubit.resultSelected.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                    itemCount: cubit.resultSelected.length,
                    itemBuilder: (context,index) => itemOfListExercise(context,cubit.resultSelected,index),
                    ),
                  ),
                if(cubit.resultSelected.isNotEmpty)
                  Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: AppTextButton(
                    buttonText: 'Save as template',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: ColorsManager.darkGray,
                          content: Text(
                            'Template Name',
                            style: TextStyles.font16White700,
                          ),
                          actions: [
                            TextFormField(
                              controller: cubit.templateController,
                              decoration: InputDecoration(
                                hintText: 'New Template',
                                hintStyle: const TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey.shade600,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),

                            ),
                            Center(
                              child: TextButton(
                                  child: Text(
                                    'Save',
                                  style: TextStyles.font13White600.copyWith(
                                    color: ColorsManager.mainPurple,
                                    fontSize: 16,
                                  ),
                                  ),
                                onPressed: (){
                                    cubit.createCustomPlan();
                                    context.pop();
                                    context.pop();
                                },
                              ),
                            ),
                          ],
                        ),
                      );

                    },
                                    ),
                  ),

              ],
            ),

          ),
        );
      },
    );


  }
  Widget itemOfListExercise(context,exercise,index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: ListTile(
        title: Text(
          exercise[index],
          style: TextStyles.font16White700,
        ),
        // subtitle: Text(
        //   exercise.category!,
        //   style: TextStyles.font12White600,
        // ),
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

