
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/home/data/models/home_response.dart';

part 'home_states.freezed.dart';
@freezed

class HomeState <T> with _$HomeState<T> {


  const factory HomeState.initial() = _Initial;
  const factory HomeState.tabChanged(int index) = TabChanged;

  const factory HomeState.homeLoading() = HomeLoading;
  const factory HomeState.homeSuccess(HomeResponse homeResponse) = HomeSuccess;
  const factory HomeState.homeError() = HomeError;


}