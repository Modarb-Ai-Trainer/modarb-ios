
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';
@freezed

class HomeState <T> with _$HomeState<T> {


  const factory HomeState.initial() = _Initial;
  const factory HomeState.tabChanged(int index) = TabChanged;


}