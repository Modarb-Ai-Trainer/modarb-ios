import 'package:json_annotation/json_annotation.dart';
import 'package:modarb_app/features/register/data/models/register_request_body.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {

  final int? status;
  final String? message;
  final UserData? data;

  LoginResponse({this.status,this.message, this.data });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}


@JsonSerializable()
class UserData {
  UserModel ? user;
  String? token;

  UserData({this.user, this.token});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}


@JsonSerializable()
class UserModel {
  String? id;
  String? name;
  String? email;
  String? role;
  String? gender;
  String? age;
  String? height;
  String? weight;
  @JsonKey(name: 'fitness_level')
  String? fitnessLevel;
  PreferencesModel? preferences;
  List<String>? injuries;



UserModel({

  this.id,
  this.name,
  this.email,
  this.role,
  this.gender,
  this.age,
  this.height,
  this.weight,
  this.fitnessLevel,
  this.preferences,
  this.injuries,

});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

}