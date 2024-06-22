import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../data/models/item_Model.dart';
import '../widgets/item_of_list.dart';

class FitnessInjury extends StatelessWidget{
  const FitnessInjury({Key? key}) : super(key: key);

  // List<bool> selectedItems = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit,RegisterState>(
      builder: (context,state){
        final cubit = context.read<RegisterCubit>();
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      Text(
                        'Do you currently experience any pain or discomfort in your body',
                        style: TextStyles.font28White700,
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace(15),
                      ListView.builder(
                          itemCount: injuryItems.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            bool isSelected = cubit.checkedInjuries[index];
                            return  ItemOfList(
                              model: injuryItems[index],
                              isSelected: isSelected,
                              onSelect: (){
                                cubit.onSelectedInjury(injuryItems[index].title, !isSelected, index);
                                // selectedItems[index] = !selectedItems[index];
                              },
                            );
                          }

                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },

    );
  }
}
