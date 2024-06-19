import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/sheet_of_adding_meal.dart';

class ItemOfTrackMeal extends StatelessWidget{
  final List<String> imageAssets;
  final List<String> nameOfMeals;
  final int index;
  const ItemOfTrackMeal({Key? key, required this.imageAssets, required this.index, required this.nameOfMeals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: GestureDetector(
        onTap: (){
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return const SheetOfAddingMeal();
            },
          );

        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 120.h,
              width: 200.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                imageAssets[index],
                fit: BoxFit.fill,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorsManager.lightPurple, // Border color
                      width: 3, // Border width
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 20.sp,
                    color:ColorsManager.lightPurple
                  ),
                ),
                Text(
                  nameOfMeals[index],
                  style: TextStyles.font16White700,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
