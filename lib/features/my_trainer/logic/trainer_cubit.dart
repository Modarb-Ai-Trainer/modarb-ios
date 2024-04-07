import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/my_trainer/data/repos/trainer_repo.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class TrainerCubit extends Cubit<TrainerState> {

  final TrainerRepo _trainerRepo;
  TrainerCubit(this._trainerRepo) : super(const TrainerState.initial());


}