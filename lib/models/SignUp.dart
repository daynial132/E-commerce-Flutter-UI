class SignUpResponseModel {
  final String token;
  final String error;

  SignUpResponseModel({required this.token, required this.error});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    return SignUpResponseModel(
      token: json["access_token"] != null ? json["access_token"] : "",
      error: json["message"] != null ? json["message"] : "",
    );
  }
}

class SignUpRequestModel {
  String name;
  String email;
  String password;
  String confirm_pass;
  String phone_no;


  SignUpRequestModel({
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
