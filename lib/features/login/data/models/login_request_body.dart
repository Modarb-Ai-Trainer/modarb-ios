class LoginRequestBody {
  LoginRequestBody({
    required this.email,
    required this.password,
  });

  final String? email;
  final String? password;

  factory LoginRequestBody.fromJson(Map<String, dynamic> json){
    return LoginRequestBody(
      email: json["email"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };

}
