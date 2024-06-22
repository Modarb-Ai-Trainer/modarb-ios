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
         body: CustomScrollView(
           slivers: [
             SliverToBoxAdapter(
               child:  Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20.h),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                       'What’s Your gender ?',
                       style: TextStyles.font19White700,
                     ),
                     verticalSpace(30),
                     const MaleAndFemale(),
                     verticalSpace(70),
                     Text(
                       'What’s your date of birth ?',
                       style: TextStyles.font19White700,
                     ),
                     verticalSpace(30),
                     TextFormField(
                       onTap: () => cubit.selectOfDate(context),
                       decoration: InputDecoration(
                         hintText: cubit.selectedDate != null
                             ? '${cubit.selectedDate!.day}/${cubit.selectedDate!.month}/${cubit.selectedDate!.year}'
                             : 'Select a Date',
                       ),
                     ),

                     // SizedBox(
                     //   height: 250.h,
                     //   child: CupertinoPicker(
                     //     itemExtent: 32.0,
                     //     squeeze: .8,
                     //     scrollController: FixedExtentScrollController(initialItem: cubit.selectedAge),
                     //     onSelectedItemChanged: (int index) {
                     //       cubit.onAgeChange(index);
                     //     },
                     //     children: List.generate(100, (index) {
                     //       return Center(
                     //         child: Text(
                     //           (index + 1).toString(),
                     //           style: TextStyles.font20White600,
                     //         ),
                     //       );
                     //     }),
                     //   ),
                     // ),
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
