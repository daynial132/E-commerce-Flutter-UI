class SignResponseModel {
  final String token;
  final String error;

  SignResponseModel({required this.token, required this.error});

  factory SignResponseModel.fromJson(Map<String, dynamic> json) {
    return SignResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}


class SignupRequestModel {
  String name;
  String email;
  String password;
  String confirm_pass;
  String phone_no;


  SignupRequestModel({
    required this.name,
    required this.email,
    required this.password,
    required this.confirm_pass,
    required this.phone_no,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'name': name.trim(),
      'email': email.trim(),
      'password': password.trim(),
      'password_confirmation': password.trim(),
      'phone_number': phone_no.trim(),
      'device_type' : "android",
      'device_token' : '0212',
      'user_type' : 'user',
    };

    return map;
  }
}


