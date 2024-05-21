import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/horizontal_line.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/sheet_of_details_of_meal.dart';

class RecentlyAddedTab extends StatelessWidget{
  const RecentlyAddedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(delegate: SliverChildBuilderDelegate(
          (context,index) => itemOfSuggestList(context),
          childCount: 5,

        )
        )
      ],
    );
  }

  Widget itemOfSuggestList(context){
    return GestureDetector(
      onTap: (){
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return const SheetOfDetailsOfMeal();
          },
        );

      },
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorsManager.lightPurple, // Border color
                      width: 2, // Border width
                    ),
                  ),
                  child: Icon(
                      Icons.add,
                      size: 20.sp,
                      color:ColorsManager.lightPurple
                  ),
                ),
                horizontalSpace(10),
                Text(
                  'cheese',
                style: TextStyles.font13White700,)

              ],
            ),
            verticalSpace(20),
            const DividerLine(),
          ],
        ),
      ),
    );
  }
}
