import 'package:flutter/material.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/sheet_of_adding_exercises.dart';

class SheetOfAdding extends StatelessWidget{
  const SheetOfAdding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: ColorsManager.darkGray,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: (){
              context.pop();
            },
            icon: const Icon(Icons.close),
          ),
          verticalSpace(20),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return const SheetOfAddingExercises();
                },
              );
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2), // Change the color and width here
                  ),
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.transparent,
                    child: Icon(Icons.add),
                  ),
                ),
                horizontalSpace(20),
                Text(
                  'Add exercise',
                style:TextStyles.font19White700,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
