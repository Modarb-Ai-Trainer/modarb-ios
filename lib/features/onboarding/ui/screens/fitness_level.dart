import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_model_with_body.dart';
import '../widgets/container_of_goal.dart';

class FitnessLevel extends StatelessWidget{
  const FitnessLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit,RegisterState>(
     builder: (context,state){
       final cubit = context.read<RegisterCubit>();
       return Scaffold(
         body: CustomScrollView(
           slivers: [
             SliverToBoxAdapter(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20.h),
                 child: Column(
                   children: [
                     Text(
                       'What’s Your Fitness level ?',
                       textAlign: TextAlign.center,
                       style: TextStyles.font23White700,
                     ),
                     verticalSpace(30),
                     ListView.builder(
                       itemBuilder: (BuildContext context, int index) => ContainerOfGoal(
                         model: levelItems[index],
                         isSelected: cubit.selectedLevel == levelItems[index].title,
                         onSelect: (){
                           cubit.onSelectedLevel(levelItems[index].title);

                         },
                       ),
                       itemCount: levelItems.length,
                       shrinkWrap: true,
                     ),

                   ],
                 ),
               ),
             ),
           ],
         ),
       );
     },
    );
  }

}
