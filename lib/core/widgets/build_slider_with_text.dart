import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';

import '../helper/spacing.dart';
import '../theming/colors.dart';

class BuildSliderWithText extends StatelessWidget{

  final double value;
  final double all;
   final ValueChanged<double> onChanged;
   final String labelText;

   const BuildSliderWithText({Key? key, required this.value, required this.onChanged, required this.labelText, required this.all}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyles.font13White600,
          ),
          verticalSpace(5),
          SliderTheme(
            data: const SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
              overlayShape: RoundSliderOverlayShape(
                overlayRadius: 10.0,
              ),

            ),
            child: Slider(
              value: value,
              onChanged: onChanged,
              min: 0,
              max: 100,
              label: '$value',
              activeColor: ColorsManager.mainPurple,
            ),
          ),
          Text(
            ' $value / $all g ',
            style: TextStyles.font13White600,
          ),
        ],
      ),
    );
  }
}
