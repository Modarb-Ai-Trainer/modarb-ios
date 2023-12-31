import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class RulerOfWeight extends StatefulWidget{
  const RulerOfWeight({Key? key}) : super(key: key);

  @override
  State<RulerOfWeight> createState() => _RulerOfRulerState();
}

class _RulerOfRulerState extends State<RulerOfWeight> {

  RulerPickerController? _rulerPickerController;

  num currentValue = 40;


  List<RulerRange> ranges = const [
    RulerRange(begin: 10, end: 200, scale: 0.1),

  ];

  @override
  void initState() {
    super.initState();
    _rulerPickerController = RulerPickerController(value: currentValue);
  }
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RulerPicker(
          controller: _rulerPickerController!,
          onBuildRulerScaleText: (index, value) {
            return value.toInt().toString();
          },
          ranges: ranges,
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
            setState(() {
              currentValue = value;
            });
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
          '${currentValue.toStringAsFixed(1)} kg',
          style: TextStyles.font28White700.copyWith(
            color: ColorsManager.mainPurple,
          ),
        ),
      ],
    );
  }
}
