import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../../../core/theming/styles.dart';

class RulerOfWeight extends StatelessWidget{
   const RulerOfWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit,RegisterState>(
      builder: (context, state) {
        final cubit = context.read<RegisterCubit>();
        return Column(
          children: [
            RulerPicker(
              controller: cubit.rulerOfWeight,
              onBuildRulerScaleText: (index, value) {
                return value.toInt().toString();
              },
              ranges: cubit.rangesOfWeight,
              scaleLineStyleList: const [
                ScaleLineStyle(
                    color: ColorsManager.mainPurple,
                    width: 1.5,
                    height: 30,
                    scale: 0),
                ScaleLineStyle(
                    color: ColorsManager.mainPurple,
                    width: 1,
                    height: 25,
                    scale: 5),
                ScaleLineStyle(
                    color: ColorsManager.mainPurple,
                    width: 1,
                    height: 15,
                    scale: -1)
              ],

              onValueChanged: (value) {
                cubit.onWeightRulerChange(value);

              },
              rulerBackgroundColor: ColorsManager.darkGray,
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              rulerMarginTop: 10,

              marker: Container(
                  width: 6,
                  height: 50,
                  decoration: BoxDecoration(
                      color: ColorsManager.mainPurple,
                      borderRadius: BorderRadius.circular(5))),
            ),
            Text(
              cubit.currentWeight.toStringAsFixed(1)  ,
              style: TextStyles.font28White700.copyWith(
                color: ColorsManager.mainPurple,
              ),
            ),
          ],
        );
      },
    );
  }
}
