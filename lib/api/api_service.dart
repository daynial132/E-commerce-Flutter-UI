import 'package:shop_app/models/SignUp.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  Future<SignUpResponseModel> signup(SignUpRequestModel requestModel) async {
    // String url = "https://reqres.in/api/login";
    final url =
        "https://server.appsstaging.com/3148/errands_runner/api/test-signup";

    final response = await http.post(Uri.parse(url),
        body: requestModel
            .toJson()); // http.post(url, body: requestModel.toJson());
    print(json.decode(response.body));
    if (response.statusCode == 200 || response.statusCode == 400) {
      return SignUpResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
