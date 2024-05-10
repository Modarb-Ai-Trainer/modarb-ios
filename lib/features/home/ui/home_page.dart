import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/di/dependency_injection.dart';
import 'package:modarb_app/features/home/logic/home_cubit.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:modarb_app/features/home/ui/widgets/bottom_navigation_of_home.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getHomeData('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OGUzNWFhY2E4NjZkYzc4YWEwMThhOCIsImVtYWlsIjoidGVzdGluZ191c2VyQGdtYWlsLmNvbSIsIm5hbWUiOiJOZXcgVXNlciIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNzE1Mjg4NTQ1LCJleHAiOjE3MTUzNzQ5NDV9.69b9jdOHhnkig5Vbbstgzum8N0jk-PFx_jb5gVEfGVY'),
      child: BlocBuilder<HomeCubit,HomeState>(
        builder: (context,state) {
          final cubit = context.read<HomeCubit>();
          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndexOfPage],
            bottomNavigationBar: BottomNavigationOfHome(
              onTap: (index) {
                cubit.onTabChanged(index);
              },),
          );
        },
      ),
    );
  }
}

