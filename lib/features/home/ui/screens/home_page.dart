import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/home/logic/home_cubit.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:modarb_app/features/home/ui/widgets/bottom_navigation_of_home.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state) {
        final cubit = context.read<HomeCubit>();
        return Scaffold(
          body: cubit.bottomScreens[cubit.currentIndexOfPage],
          bottomNavigationBar: BottomNavigationOfHome(
            onTap: (index) {
              cubit.onTabChanged(index);
            },
          ),
        );
      },
    );
  }
}

