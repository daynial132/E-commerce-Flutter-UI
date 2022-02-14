import 'package:http/http.dart' as http;
import 'package:shop_app/models/login_model.dart';
import 'dart:convert';

import 'package:shop_app/models/signup_model.dart';


class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    // String url = "https://reqres.in/api/login";
    final url =
        "https://server.appsstaging.com/3148/errands_runner/api/test-login";

    final response = await http.post(Uri.parse(url),
        body: requestModel
            .toJson()); // http.post(url, body: requestModel.toJson());
    print(json.decode(response.body));
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),

      );
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<LoginResponseModel> Signup(SignupRequestModel requestModel) async {
    // String url = "https://reqres.in/api/login";
    final url =
        "https://server.appsstaging.com/3148/errands_runner/api/test-signup";

    final response = await http.post(Uri.parse(url),
        body: requestModel
            .toJson()); // http.post(url, body: requestModel.toJson());
    print(json.decode(response.body));
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),

      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
