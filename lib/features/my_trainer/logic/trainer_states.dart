import 'package:freezed_annotation/freezed_annotation.dart';
part 'trainer_states.freezed.dart';

@freezed

class TrainerState <T> with _$TrainerState<T> {


  const factory TrainerState.initial() = _Initial;

  const factory TrainerState.beforeWarming() = BeforeWarming;
  const factory TrainerState.counterChange({required int savedCounter}) = CounterChange;
  const factory TrainerState.counterChangeOfWarming({required int newCounter}) = CounterChangeOfWarming;
  const factory TrainerState.warmingFinished() = WarmingFinished;
  const factory TrainerState.closingTraining() = ClosingTraining;


}