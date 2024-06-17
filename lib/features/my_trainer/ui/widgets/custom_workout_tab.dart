import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/sheet_of_adding.dart';

class CustomWorkoutTab extends StatelessWidget{
  const CustomWorkoutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
     builder: (context,state){
       var cubit = context.read<TrainerCubit>();
       if(cubit.allTemplateResponse == null) {
         cubit.getCustomPlan();
       }
       return Scaffold(
         body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Your saved templates',
                        style: TextStyles.font19White700
                    ),
                    verticalSpace(10),
                  ],
                ),
              ),
            ),
            if(cubit.allTemplateResponse != null)
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                  (context,index) => itemOfTemplate(cubit.allTemplateResponse?.data, index),
              childCount: cubit.allTemplateResponse?.data.length,

            ),
              ),
            if(state is GetCustomPlanLoading)
              const SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),

              ),
            if(cubit.allTemplateResponse == null)
              SliverToBoxAdapter(
                child: Center(
                  child: Text('No templates saved yet', style: TextStyles.font16White700),
                ),

              ),
          ],
         ),
         floatingActionButton: FloatingActionButton(
           backgroundColor: ColorsManager.mainPurple,
           onPressed: () async {
              await showModalBottomSheet(
               context: context,
               isScrollControlled: true,
               builder: (BuildContext context) {
                 return const SheetOfAdding();
               },

             );

           },
           child: const Icon(Icons.add),
         ),

       );
     },
    );
  }

  Widget itemOfTemplate(template,index) => Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
    child: Container(
      width: double.infinity,
      height: 230.h,
      decoration: BoxDecoration(
        color: ColorsManager.lighterGray,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  template[index].name,
                  style: TextStyles.font13White700,
                ),
                const Icon(Icons.more_horiz_sharp,
                  color: ColorsManager.mainPurple,
                ),
              ],
            ),
            verticalSpace(10),
            Text(
              template[index].creationDate,
              style: TextStyles.font12White600,

            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/timer.svg'),
                Text(
                  '30 min',
                  style: TextStyles.font12White600,
                ),
                horizontalSpace(3),
                SvgPicture.asset('assets/icons/weight.svg'),
                Text('50 kg',
                  style: TextStyles.font12White600,
                ),
                horizontalSpace(3),

                SvgPicture.asset('assets/icons/Page.svg'),
                Text('16 reps',
                  style: TextStyles.font12White600,
                ),


              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Exercises',
                  style: TextStyles.font13White700,
                ),
                Text('sets             ',
                  style: TextStyles.font13White700,
                ),

              ],
            ),
            verticalSpace(10),
            Expanded(
              child: ListView.builder(
                itemCount: template[index].exercises.length,
                  itemBuilder:(context,index) => itemOfRow(template,index),
              ),
            ),
          ],
        ),
      ),
    ),
  );


  Widget itemOfRow(template,index) =>Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          template[index].exercises[index].name,
          style: TextStyles.font12White600,
        ),
        Text(
         '${ template[index].exercises[index].duration} seconds',
          style: TextStyles.font12White600,
        ),

      ],
    ),
  );



}
