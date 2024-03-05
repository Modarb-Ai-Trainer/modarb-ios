// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      preferences: json['preferences'] == null
          ? null
          : PreferencesModel.fromJson(
              json['preferences'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      gender: json['gender'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      fitnessLevel: json['fitness_level'] as String?,
      injuries: (json['injuries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dob: json['dob'] as String?,
      role: json['role'] as String?,
      v: json['__v'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'preferences': instance.preferences,
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'gender': instance.gender,
      'height': instance.height,
      'weight': instance.weight,
      'fitness_level': instance.fitnessLevel,
      'injuries': instance.injuries,
      'dob': instance.dob,
      'role': instance.role,
      '__v': instance.v,
    };
