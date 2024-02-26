import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class MaleAndFemale extends StatelessWidget {
  const MaleAndFemale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        final cubit = context.read<RegisterCubit>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  cubit.onGenderChange('male');
                },
                child: CircleAvatar(
                  backgroundColor: cubit.selectedGender == 'male'
                      ? ColorsManager.mainPurple
                      : ColorsManager.lighterGray,
                  radius: 65,
                  child: Center(
                    child: Column(
                      children: [
                        const Icon(
                          Icons.male_outlined,
                          size: 95,
                          color: ColorsManager.lightWhite,
                        ),
                        Text(
                          'Male',
                          style: TextStyles.font13White600,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                 cubit.onGenderChange('female');
                },
                child: CircleAvatar(
                  backgroundColor: cubit.selectedGender == 'female'
                      ? ColorsManager.mainPurple
                      : ColorsManager.lighterGray,
                  radius: 65,
                  child: Center(
                    child: Column(
                      children: [
                        const Icon(
                          Icons.female_outlined,
                          size: 95,
                          color: ColorsManager.lightWhite,
                        ),
                        Text(
                          'Female',
                          style: TextStyles.font13White600,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
