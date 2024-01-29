import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class MaleAndFemale extends StatefulWidget{
  const MaleAndFemale({Key? key}) : super(key: key);

  @override
  State<MaleAndFemale> createState() => _MaleAndFemaleState();
}

class _MaleAndFemaleState extends State<MaleAndFemale> {
  late String selectedChoice;
  bool isSelected1 = false;
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: (){
              setState(() {
                selectedChoice = 'Male';
                isSelected1 = !isSelected1;
              });
            },
            child: CircleAvatar(
              backgroundColor: isSelected1 ? ColorsManager.mainPurple :ColorsManager.lighterGray,
              radius: 65,
              child: Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.male_outlined,
                      size: 95,
                      color: ColorsManager.lightWhite,
                    ),
                    Text(
                      'Male',
                      style: TextStyles.font13White600,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: (){
              setState(() {
                selectedChoice = 'Female';
                isSelected2 = !isSelected2;
              });
            },
            child: CircleAvatar(
              backgroundColor: isSelected2 ?  ColorsManager.mainPurple :ColorsManager.lighterGray,
              radius: 65,
              child: Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.female_outlined,
                      size: 95,
                      color: ColorsManager.lightWhite,
                    ),
                    Text(
                      'Female',
                      style: TextStyles.font13White600,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );

  }
}
