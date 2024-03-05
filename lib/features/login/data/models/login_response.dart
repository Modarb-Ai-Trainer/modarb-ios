import 'package:json_annotation/json_annotation.dart';
import 'package:modarb_app/features/register/data/models/register_request_body.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {

  int? status;
  String? message;
  UserData? data;

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
  PreferencesModel? preferences;
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? email;
  String? password;
  String? gender;
  String? height;
  String? weight;
  @JsonKey(name: 'fitness_level')
  String? fitnessLevel;
  List<String>? injuries;
  String? dob;
  String? role;
  @JsonKey(name: '__v')
  String? v;


UserModel({
  this.preferences,
  this.id,
  this.name,
  this.email,
  this.password,
  this.gender,
  this.height,
  this.weight,
  this.fitnessLevel,
  this.injuries,
  this.dob,
  this.role,
  this.v,
});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

}