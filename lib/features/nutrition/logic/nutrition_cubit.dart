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


  List<String> imageAssets = [
    'assets/images/break_fast_meal.png',
    'assets/images/lunch_meal_2.png',
    'assets/images/snack_meal_2.png',
    'assets/images/dinner_meal_2.png',
  ];

  List<String> imageOfContainer = [
    'assets/images/1.svg',
    'assets/images/2.svg',
    'assets/images/3.svg',
    'assets/images/4.svg',
  ];

  List<String> nameOfMeals =[
    'Breakfast',
    'Lunch',
    'Snack',
    'Dinner',
  ];

  List<String> nameOfDays =[
    'Saturday',
    'Sunday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];
  final List<String> itemsList =[
    'My Plan',
    'Other Plan',
  ];

  String? valueChoose = 'My Plan';

  void emitChangeSelection(String? value){

    valueChoose = value;
    emit(NutritionState.changeSelection(valueChoose));

  }
}