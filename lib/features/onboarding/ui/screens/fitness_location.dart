import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_Model.dart';
import '../widgets/item_of_list.dart';

class FitnessLocation extends StatelessWidget{
  const FitnessLocation({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit,RegisterState>(
      builder: (context,state){
        final cubit = context.read<RegisterCubit>();
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      Text(
                        'Where do you exercise ?',
                        textAlign: TextAlign.center,
                        style: TextStyles.font28White700,
                      ),
                      verticalSpace(90),
                      ListView.builder(
                        itemBuilder: (BuildContext context, int index) => ItemOfList(
                          model: locationItems[index],
                          isSelected: cubit.selectedLocation == locationItems[index].title,
                          onSelect: (){
                            cubit.onSelectedLocation(locationItems[index].title);
                          },
                        ),
                        itemCount: locationItems.length,
                        shrinkWrap: true,
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

