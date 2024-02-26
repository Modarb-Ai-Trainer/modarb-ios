import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../../../core/helper/spacing.dart';
import '../../../register/logic/register_cubit.dart';
import '../widgets/male_and_female.dart';

class GenderAndAge extends StatelessWidget{
    const GenderAndAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit,RegisterState>(
     builder: (context, state){
       final cubit = context.read<RegisterCubit>();
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
                   scrollController: FixedExtentScrollController(initialItem: cubit.selectedAge),
                   onSelectedItemChanged: (int index) {
                     cubit.onAgeChange(index);
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
     },
    );
  }
}
