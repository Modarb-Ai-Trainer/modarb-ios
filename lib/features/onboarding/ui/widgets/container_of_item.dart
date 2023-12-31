import 'package:flutter/material.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';

class ContainerOfItem extends StatelessWidget{
  const ContainerOfItem({Key? key, required this.title,required this.index, required this.isSelected, required this.onSelect}) : super(key: key);
  final String title;
  final int index;
  final bool isSelected;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.mainPurple : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color:ColorsManager.mainPurple,
            width: 1.5,
          ),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyles.font19White700,
              textAlign: TextAlign.center,
            ),
            verticalSpace(5),

          ],
        ),
      ),
    );
  }
}
