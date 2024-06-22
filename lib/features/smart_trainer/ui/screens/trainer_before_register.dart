import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/features/smart_trainer/ui/widgets/container_of_message.dart';
import '../../../../core/helper/spacing.dart';


class TrainerBeforeRegister extends StatelessWidget{
  const TrainerBeforeRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/trainer.png',
                          scale: .8,
                        ),
                        verticalSpace(30),
                        const ContainerOfMessage(
                          text: 'Great job completing the initial steps! Now, let\'s tailor your workout plan to match your fitness level, preferred locations, and available equipment for a truly personalized experience',
                        ),
                        verticalSpace(20),
                        const ContainerOfMessage(
                          text: ' Your journey to a healthier you is just a step away! 🚀💪',
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}
