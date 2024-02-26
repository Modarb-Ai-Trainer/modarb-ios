import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../data/models/checkbox_Item_Model.dart';
import 'checkbox_item.dart';

class CheckboxList extends StatelessWidget {
  const CheckboxList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit,RegisterState>(
     builder: (context,state){
       final cubit = context.read<RegisterCubit>();
       return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                itemCount: checkboxItems.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                  return CheckboxItem(
                    item: checkboxItems[index],
                    isSelected: cubit.checkedEquipments[index],
                    onChanged: (value) {
                      cubit.onSelectedEquipment(checkboxItems[index].title, value ?? false, index);
                    },
                  );
                },
              ),
            ],
          );
       },
    );
  }
}












