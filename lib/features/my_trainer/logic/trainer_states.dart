import 'package:freezed_annotation/freezed_annotation.dart';
part 'trainer_states.freezed.dart';

@freezed

class TrainerState <T> with _$TrainerState<T> {


  const factory TrainerState.initial() = _Initial;


}