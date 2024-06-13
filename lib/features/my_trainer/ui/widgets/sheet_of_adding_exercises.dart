// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:modarb_app/core/helper/extension.dart';
// import 'package:modarb_app/core/helper/spacing.dart';
// import 'package:modarb_app/core/theming/colors.dart';
// import 'package:modarb_app/core/theming/styles.dart';
// import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
// import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
//
// class SheetOfAddingExercises extends StatelessWidget {
//   const SheetOfAddingExercises({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<TrainerCubit, TrainerState>(
//       builder: (context, state) {
//         var cubit = context.read<TrainerCubit>();
//         return Container(
//           decoration: const BoxDecoration(
//             color: ColorsManager.darkGray,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(16),
//               topRight: Radius.circular(16),
//             ),
//           ),
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // mainAxisSize: MainAxisSize.min,
//             children: [
//                Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                       onPressed: (){
//                         context.pop();
//                       },
//                     icon: const Icon(Icons.close),
//                   ),
//                   TextButton(
//                       onPressed: (){},
//                       child: const Text('ADD')) ,
//                 ],
//               ),
//               verticalSpace(10),
//               TextFormField(
//                 controller: cubit.searchController,
//                 decoration: InputDecoration(
//                   hintText: 'search',
//                   hintStyle: const TextStyle(
//                       color: ColorsManager.mainPurple
//                   ),
//                   filled: true,
//                   fillColor: ColorsManager.lighterGray,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(16.0),
//                     borderSide: BorderSide.none,
//
//                   ),
//                   prefixIcon: const Icon(Icons.search,
//                     color: ColorsManager.mainPurple,
//                   ),
//                 ),
//                 onTap: (){
//                   cubit.getSearchExercise();
//                 },
//                 onChanged: (value){
//                   cubit.getSearchExercise();
//
//                 },
//               ),
//               verticalSpace(10),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: DropdownButton(
//                   value: cubit.valueChoose,
//                   hint: Text('${cubit.valueChoose}'),
//                   dropdownColor: ColorsManager.lighterGray,
//                   icon: const Icon(Icons.arrow_drop_down),
//                   iconSize: 33,
//                   isExpanded: true,
//                   underline: const SizedBox(),
//                   onChanged: (String ?newValue) {
//                     cubit.emitChangeSelection(newValue);
//                   },
//                   items: cubit.itemsExercisesList.map((valueItem){
//                     return DropdownMenuItem(
//                       value :valueItem ,
//                     child : Text(valueItem),
//                   );
//                   }).toList(),
//                 ),
//               ),
//               if (state is GetExerciseLoading || state is GetSearchExerciseLoading)
//                 const Center(child: CircularProgressIndicator()),
//               if (state is GetExerciseSuccess || state is GetSearchExerciseSuccess)
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: state is GetExerciseSuccess ? state.allExerciseResponse.data.length
//                         : (state as GetSearchExerciseSuccess).searchExercise.data.length,
//                     itemBuilder: (context, index) {
//                       bool isSelected = cubit.checkedExercise[index];
//                       var exercise = state is GetExerciseSuccess ? state.allExerciseResponse.data[index]
//                           : (state as GetSearchExerciseSuccess).searchExercise.data[index];
//                       return itemOfListExercise(context,!isSelected,exercise,index,cubit);
//                       },
//                 ),
//                 ),
//               if (state is GetExerciseError || state is GetSearchExerciseError)
//                 const Center(
//                     child: Text('No data here to show ')
//                 ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Widget itemOfListExercise(context,isSelected,exercise,index,cubit){
//     return StatefulBuilder(builder: (context,setState){
//       return Container(
//         margin:  EdgeInsets.symmetric(vertical: 6.h),
//         decoration: BoxDecoration(
//           color:  isSelected? ColorsManager.lighterGray : Colors.transparent,
//         ),
//         child: ListTile(
//           title: Text(
//             exercise.name!,
//             style: TextStyles.font16White700,
//           ),
//           subtitle: Text(
//             exercise.category!,
//             style: TextStyles.font12White600,
//           ),
//           leading: SizedBox(
//             width: 70.w,
//             height: 60.h,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10.r),
//               child: Image.asset(
//                 'assets/images/Muscles1.png',
//                 fit: BoxFit.fill,
//
//               ),
//             ),
//           ),
//           onTap: (){
//             setState((){
//               cubit.onSelectedExercise(exercise.name ,isSelected , index);
//
//             });
//           },
//         ),
//       );
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';


class SheetOfAddingExercises extends StatefulWidget {
  const SheetOfAddingExercises({Key? key}) : super(key: key);

  @override
  _SheetOfAddingExercisesState createState() => _SheetOfAddingExercisesState();
}

class _SheetOfAddingExercisesState extends State<SheetOfAddingExercises> {
  List<bool> selectedExercise = [];
  List<String> selectedExercisesList = [];

  @override
  void initState() {
    super.initState();
    final cubit = context.read<TrainerCubit>();
    selectedExercise = List.generate(cubit.itemsExercisesList.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit, TrainerState>(
      builder: (context, state) {
        var cubit = context.read<TrainerCubit>();
        return Container(
          decoration: const BoxDecoration(
            color: ColorsManager.darkGray,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                      },
                    icon: const Icon(Icons.close),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pop(selectedExercisesList);
                    },
                    child: const Text('ADD'),
                  ),
                ],
              ),
              verticalSpace(10),
              TextFormField(
                controller: cubit.searchController,
                decoration: InputDecoration(
                  hintText: 'search',
                  hintStyle: const TextStyle(color: ColorsManager.mainPurple),
                  filled: true,
                  fillColor: ColorsManager.lighterGray,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: ColorsManager.mainPurple,
                  ),
                ),
                onTap: () {
                  cubit.getSearchExercise();
                },
                onChanged: (value) {
                  cubit.getSearchExercise();
                },
              ),
              verticalSpace(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                  value: cubit.valueChoose,
                  hint: Text('${cubit.valueChoose}'),
                  dropdownColor: ColorsManager.lighterGray,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 33,
                  isExpanded: true,
                  underline: const SizedBox(),
                  onChanged: (String? newValue) {
                    cubit.emitChangeSelection(newValue);
                  },
                  items: cubit.itemsExercisesList.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              if (state is GetExerciseLoading || state is GetSearchExerciseLoading)
                const Center(child: CircularProgressIndicator()),
              if (state is GetExerciseSuccess || state is GetSearchExerciseSuccess)
                Expanded(
                  child: ListView.builder(
                    itemCount: state is GetExerciseSuccess
                        ? state.allExerciseResponse.data.length
                        : (state as GetSearchExerciseSuccess).searchExercise.data.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedExercise[index];
                      var exercise = state is GetExerciseSuccess
                          ? state.allExerciseResponse.data[index]
                          : (state as GetSearchExerciseSuccess).searchExercise.data[index];
                      return itemOfListExercise(context, isSelected, exercise, index);
                    },
                  ),
                ),
              if (state is GetExerciseError || state is GetSearchExerciseError)
                const Center(child: Text('No data here to show ')),
            ],
          ),
        );
      },
    );
  }

  Widget itemOfListExercise(BuildContext context, bool isSelected,exercise, int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.lighterGray : Colors.transparent,
      ),
      child: ListTile(
        title: Text(
          exercise.name!,
          style: TextStyles.font16White700,
        ),
        subtitle: Text(
          exercise.category!,
          style: TextStyles.font12White600,
        ),
        leading: SizedBox(
          width: 70.w,
          height: 60.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(
              'assets/images/Muscles1.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: () {
          setState(() {
            selectedExercise[index] = !selectedExercise[index]; // Toggle selection
            if (selectedExercise[index]) {
              selectedExercisesList.add(exercise.name);
            } else {
              selectedExercisesList.remove(exercise.name);
            }
            print(selectedExercisesList);
          });
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:modarb_app/core/helper/spacing.dart';
// import 'package:modarb_app/core/theming/colors.dart';
// import 'package:modarb_app/core/theming/styles.dart';
// import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
// import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
//
//
// // class SheetOfAddingExercises extends StatelessWidget {
// //   const SheetOfAddingExercises({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return BlocBuilder<TrainerCubit, TrainerState>(
// //       builder: (context, state) {
// //         var cubit = context.read<TrainerCubit>();
// //
// //         return _ExerciseListBuilder(
// //           cubit: cubit,
// //           state: state,
// //         );
// //       },
// //     );
// //   }
// // }
// //
// // class _ExerciseListBuilder extends StatefulWidget {
// //   final TrainerCubit cubit;
// //   final TrainerState state;
// //
// //   const _ExerciseListBuilder({
// //     Key? key,
// //     required this.cubit,
// //     required this.state,
// //   }) : super(key: key);
// //
// //   @override
// //   __ExerciseListBuilderState createState() => __ExerciseListBuilderState();
// // }
// //
// // class __ExerciseListBuilderState extends State<_ExerciseListBuilder> {
// //   List<bool> _isSelected = [];
// //   final List<String?> _selectedItems = []; // List to store selected item names
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     if (widget.state is GetExerciseSuccess) {
// //       _isSelected = List.filled(
// //         (widget.state as GetExerciseSuccess).allExerciseResponse.data.length,
// //         false,
// //       );
// //     } else if (widget.state is GetSearchExerciseSuccess) {
// //       _isSelected = List.filled(
// //         (widget.state as GetSearchExerciseSuccess).searchExercise.data.length,
// //         false,
// //       );
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       decoration: const BoxDecoration(
// //         color: ColorsManager.darkGray,
// //         borderRadius: BorderRadius.only(
// //           topLeft: Radius.circular(16),
// //           topRight: Radius.circular(16),
// //         ),
// //       ),
// //       padding: const EdgeInsets.all(16.0),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //               IconButton(
// //                 onPressed: () {
// //                   Navigator.of(context).pop();
// //                 },
// //                 icon: const Icon(Icons.close),
// //               ),
// //               TextButton(
// //                 onPressed: () {
// //                   // widget.cubit.addSelectedExercises(_selectedItems);
// //                 },
// //                 child: const Text('ADD'),
// //               ),
// //             ],
// //           ),
// //           verticalSpace(10),
// //           TextFormField(
// //             controller: widget.cubit.searchController,
// //             decoration: InputDecoration(
// //               hintText: 'Search',
// //               hintStyle: const TextStyle(color: ColorsManager.mainPurple),
// //               filled: true,
// //               fillColor: ColorsManager.lighterGray,
// //               border: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(16.0),
// //                 borderSide: BorderSide.none,
// //               ),
// //               prefixIcon: const Icon(
// //                 Icons.search,
// //                 color: ColorsManager.mainPurple,
// //               ),
// //             ),
// //             onChanged: (value) {
// //               widget.cubit.getSearchExercise();
// //             },
// //           ),
// //           verticalSpace(10),
// //           Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: DropdownButton(
// //                   value: widget.cubit.valueChoose,
// //                   hint: Text('${widget.cubit.valueChoose}'),
// //                   dropdownColor: ColorsManager.lighterGray,
// //                   icon: const Icon(Icons.arrow_drop_down),
// //                   iconSize: 33,
// //                   isExpanded: true,
// //                   underline: const SizedBox(),
// //                   onChanged: (String ?newValue) {
// //                     widget.cubit.emitChangeSelection(newValue);
// //                   },
// //                   items: widget.cubit.itemsExercisesList.map((valueItem){
// //                     return DropdownMenuItem(
// //                       value :valueItem ,
// //                     child : Text(valueItem),
// //                   );
// //                   }).toList(),
// //                 ),
// //               ),
// //           if (widget.state is GetExerciseLoading ||
// //               widget.state is GetSearchExerciseLoading)
// //             const Center(child: CircularProgressIndicator()),
// //           if (widget.state is GetExerciseSuccess ||
// //               widget.state is GetSearchExerciseSuccess)
// //             Expanded(
// //               child: ListView.builder(
// //                 itemCount: widget.state is GetExerciseSuccess
// //                     ? (widget.state as GetExerciseSuccess).allExerciseResponse.data.length
// //                     : (widget.state as GetSearchExerciseSuccess).searchExercise.data.length,
// //                 itemBuilder: (context, index) {
// //                   var exercise = widget.state is GetExerciseSuccess
// //                       ? (widget.state as GetExerciseSuccess).allExerciseResponse.data[index]
// //                       : (widget.state as GetSearchExerciseSuccess).searchExercise.data[index];
// //
// //                   return GestureDetector(
// //                     onTap: () {
// //                       setState(() {
// //                         // var selectedTile = ListTile(
// //                         //   title: Text(
// //                         //     exercise.name!,
// //                         //     style: TextStyles.font16White700,
// //                         //   ),
// //                         //   subtitle: Text(
// //                         //     exercise.category!,
// //                         //     style: TextStyles.font12White600,
// //                         //   ),
// //                         //   leading: SizedBox(
// //                         //     width: 70.w,
// //                         //     height: 60.h,
// //                         //     child: ClipRRect(
// //                         //       borderRadius: BorderRadius.circular(10.r),
// //                         //       child: Image.asset(
// //                         //         'assets/images/Muscles1.png',
// //                         //         fit: BoxFit.fill,
// //                         //       ),
// //                         //     ),
// //                         //   ),
// //                         // );
// //                         if (_isSelected.isNotEmpty && index < _isSelected.length){
// //                           _isSelected[index] = !_isSelected[index];
// //                           if (_isSelected[index]) {
// //                             _selectedItems.add(exercise.name); // Add to selected items list
// //                           } else {
// //                             _selectedItems.remove(exercise.name); // Remove from selected items list
// //                           }
// //                         }
// //
// //                       });
// //                       print(_selectedItems);
// //                     },
// //                     child: Container(
// //                       margin: EdgeInsets.symmetric(vertical: 6.h),
// //                       decoration: BoxDecoration(
// //                         color: _isSelected[index] ? ColorsManager.mainPurple.withOpacity(0.1)
// //                             : Colors.transparent,
// //                       ),
// //                       child: ListTile(
// //                         title: Text(
// //                           exercise.name!,
// //                           style: TextStyles.font16White700,
// //                         ),
// //                         subtitle: Text(
// //                           exercise.category!,
// //                           style: TextStyles.font12White600,
// //                         ),
// //                         leading: SizedBox(
// //                           width: 70.w,
// //                           height: 60.h,
// //                           child: ClipRRect(
// //                             borderRadius: BorderRadius.circular(10.r),
// //                             child: Image.asset(
// //                               'assets/images/Muscles1.png',
// //                               fit: BoxFit.fill,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //           if (widget.state is GetExerciseError ||
// //               widget.state is GetSearchExerciseError)
// //             const Center(child: Text('Error loading exercises')),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:modarb_app/core/helper/spacing.dart';
// import 'package:modarb_app/core/theming/colors.dart';
// import 'package:modarb_app/core/theming/styles.dart';
// import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
// import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
//
// class SheetOfAddingExercises extends StatelessWidget {
//   const SheetOfAddingExercises({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<TrainerCubit, TrainerState>(
//       builder: (context, state) {
//         var cubit = context.read<TrainerCubit>();
//         return _ExerciseListBuilder(
//           cubit: cubit,
//           state: state,
//         );
//       },
//     );
//   }
// }
//
// class _ExerciseListBuilder extends StatefulWidget {
//   final TrainerCubit cubit;
//   final TrainerState state;
//
//   const _ExerciseListBuilder({
//     Key? key,
//     required this.cubit,
//     required this.state,
//   }) : super(key: key);
//
//   @override
//   __ExerciseListBuilderState createState() => __ExerciseListBuilderState();
// }
//
// class __ExerciseListBuilderState extends State<_ExerciseListBuilder> {
//   List<bool> _isSelected = [];
//   final List<String> _selectedItems = []; // List to store selected item names
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize isSelected list based on current state
//     if (widget.state is GetExerciseSuccess) {
//       _isSelected = List.filled(
//         (widget.state as GetExerciseSuccess).allExerciseResponse.data.length,
//         false,
//       );
//     } else if (widget.state is GetSearchExerciseSuccess) {
//       _isSelected = List.filled(
//         (widget.state as GetSearchExerciseSuccess).searchExercise.data.length,
//         false,
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         color: ColorsManager.darkGray,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(16),
//           topRight: Radius.circular(16),
//         ),
//       ),
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 icon: const Icon(Icons.close),
//               ),
//               TextButton(
//                 onPressed: () {
//                   // Handle the action when ADD button is pressed
//                   // Here, you can use _selectedItems list as needed
//                   // widget.cubit.addSelectedExercises(_selectedItems);
//                 },
//                 child: const Text('ADD'),
//               ),
//             ],
//           ),
//           verticalSpace(10),
//           TextFormField(
//             controller: widget.cubit.searchController,
//             decoration: InputDecoration(
//               hintText: 'Search',
//               hintStyle: const TextStyle(color: ColorsManager.mainPurple),
//               filled: true,
//               fillColor: ColorsManager.lighterGray,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//                 borderSide: BorderSide.none,
//               ),
//               prefixIcon: const Icon(
//                 Icons.search,
//                 color: ColorsManager.mainPurple,
//               ),
//             ),
//             onChanged: (value) {
//               widget.cubit.getSearchExercise();
//             },
//           ),
//           verticalSpace(10),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: DropdownButton(
//               value: widget.cubit.valueChoose,
//               hint: Text('${widget.cubit.valueChoose}'),
//               dropdownColor: ColorsManager.lighterGray,
//               icon: const Icon(Icons.arrow_drop_down),
//               iconSize: 33,
//               isExpanded: true,
//               underline: const SizedBox(),
//               onChanged: (String ?newValue) {
//                 widget.cubit.emitChangeSelection(newValue);
//               },
//               items: widget.cubit.itemsExercisesList.map((valueItem){
//                 return DropdownMenuItem(
//                   value :valueItem ,
//                   child : Text(valueItem),
//                 );
//               }).toList(),
//             ),
//           ),
//           if (widget.state is GetExerciseLoading ||
//               widget.state is GetSearchExerciseLoading)
//             const Center(child: CircularProgressIndicator()),
//           if (widget.state is GetExerciseSuccess ||
//               widget.state is GetSearchExerciseSuccess)
//             Expanded(
//               child: ListView.builder(
//                 itemCount: widget.state is GetExerciseSuccess
//                     ? (widget.state as GetExerciseSuccess)
//                     .allExerciseResponse
//                     .data
//                     .length
//                     : (widget.state as GetSearchExerciseSuccess)
//                     .searchExercise
//                     .data
//                     .length,
//                 itemBuilder: (context, index) {
//                   var exercise = widget.state is GetExerciseSuccess
//                       ? (widget.state as GetExerciseSuccess)
//                       .allExerciseResponse
//                       .data[index]
//                       : (widget.state as GetSearchExerciseSuccess)
//                       .searchExercise
//                       .data[index];
//
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _isSelected[index] = !_isSelected[index];
//                         if (_isSelected[index]) {
//                           _selectedItems.add(exercise.name!); // Add to selected items list
//                         } else {
//                           _selectedItems.remove(exercise.name!); // Remove from selected items list
//                         }
//                       });
//                     },
//                     child: Container(
//                       margin: EdgeInsets.symmetric(vertical: 6.h),
//                       decoration: BoxDecoration(
//                         color: _isSelected[index]
//                             ? ColorsManager.mainPurple.withOpacity(0.1)
//                             : Colors.transparent,
//                       ),
//                       child: ListTile(
//                         title: Text(
//                           exercise.name!,
//                           style: TextStyles.font16White700,
//                         ),
//                         subtitle: Text(
//                           exercise.category!,
//                           style: TextStyles.font12White600,
//                         ),
//                         leading: SizedBox(
//                           width: 70.w,
//                           height: 60.h,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10.r),
//                             child: Image.asset(
//                               'assets/images/Muscles1.png',
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           if (widget.state is GetExerciseError ||
//               widget.state is GetSearchExerciseError)
//             const Center(child: Text('Error loading exercises')),
//         ],
//       ),
//     );
//   }
// }