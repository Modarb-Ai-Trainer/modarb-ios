import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/exercise2.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/exersice1.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/training_bloc_listener.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WarmScreen extends StatelessWidget{


  const WarmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<TrainerCubit,TrainerState>(
      listener: (context, state){},
      builder: (context,state){
        final cubit = context.read<TrainerCubit>();
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20.h,),
              child: Column(
                children: [
                  const TrainingBlocListener(),
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
                    count: 4,

                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Row(
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
                        horizontalSpace(40),
                        Text(
                          'Warms up',
                          style: TextStyles.font19White700,

                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 500.h,
                    width: double.infinity,
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      controller: cubit.warmController,
                      children: const [
                        Exercise1(),
                        Exercise2(),
                        Exercise2(),
                        Exercise1(),
                      ],
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
                            cubit.warmController.previousPage(
                              duration: const Duration(
                                seconds: 1,
                              ),
                              curve: Curves.decelerate,
                            );
                          },
                          icon: const Icon(Icons.arrow_circle_left_outlined,
                            color:ColorsManager.mainPurple,
                            size: 34,
                          ),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.check_circle_outline_sharp,
                            color:ColorsManager.mainPurple,
                            size: 44,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                            cubit.warmController.nextPage(
                              duration: const Duration(
                                seconds: 1,
                              ),
                              curve: Curves.decelerate,
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
