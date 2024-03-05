import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/di/dependency_injection.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/features/home/logic/home_cubit.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:modarb_app/features/home/ui/widgets/bottom_navigation_of_home.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocBuilder<HomeCubit,HomeState>(
        builder: (context,state) {
          final cubit = context.read<HomeCubit>();
          return Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: EdgeInsets.all(10.h),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 16, // Adjust the size as per your requirement
                ),
              ),
              actions: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.notifications_none_sharp,
                    size: 32,
                    color: ColorsManager.mainPurple,
                  ),
                ),
              ],
            ),
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

