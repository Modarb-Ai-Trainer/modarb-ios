import 'package:flutter/material.dart';

class PlansTab extends StatelessWidget{
  const PlansTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: DropdownButton(
          //     value: cubit.valueChoose,
          //     hint:  cubit.valueChoose == null ? const Text('select item') : Text('${cubit.valueChoose}') ,
          //     dropdownColor: ColorsManager.lighterGray,
          //     icon: const Icon(Icons.arrow_drop_down),
          //     iconSize: 33,
          //     isExpanded: true,
          //     underline: const SizedBox(),
          //     onChanged: (String ?newValue) {
          //       cubit.emitChangeSelection(newValue);
          //     },
          //     items: cubit.itemsExercisesList.map((valueItem){
          //       return DropdownMenuItem(
          //         value :valueItem,
          //         child : Text(valueItem),
          //       );
          //     }).toList(),
          //   ),
          // ),

        ],
      ),
    );
  }
}
