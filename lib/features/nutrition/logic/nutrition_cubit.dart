import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/nutrition/data/models/today_intake_response.dart';
import 'package:modarb_app/features/nutrition/data/repos/nutrition_repo.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class NutritionCubit extends Cubit<NutritionState> {


  final NutritionRepo _nutritionRepo;
  NutritionCubit(this._nutritionRepo) : super(const NutritionState.initial());


  TodayIntakeResponse? todayIntakeResponse;
  void getTodayIntake() async {
    emit(const NutritionState.todayIntakeLoading());
    try {
      todayIntakeResponse = await _nutritionRepo.getTodayIntake();

      emit(NutritionState.todayIntakeSuccess(todayIntakeResponse!));
    } catch (error) {
      print(error.toString());
      emit(const NutritionState.todayIntakeError());
    }
  }



}