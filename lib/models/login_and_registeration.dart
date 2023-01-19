import 'dart:convert';
//import 'package:http/http.dart' as http;

// class AuthService {
//   final registerationUrl =
//       Uri.parse("http://isnp.herokuapp.com/accounts/api/register/");
//   final loginUrl = Uri.parse("http://isnp.herokuapp.com/accounts/api/login/");
//   Future<RegisterationResponse> registeration(
//       String? username, String? email, String? password) async {
//     var response = await http.post(registerationUrl,
//         body: {"username": username, "email": email, "password": password});
//
//     return RegisterationResponse.fromJson(jsonDecode(response.body));
//   }

//   Future<LoginResponse> login(String? username, String? password) async {
//     var response = await http
//         .post(loginUrl, body: {"username": username, "password": password});
//
//     print(response.body);
//
//     return LoginResponse.fromJson(jsonDecode(response.body));
//   }
// }

class RegisterationResponse {
  List<dynamic>? username;
  List<dynamic>? email;
  dynamic token;

  RegisterationResponse({this.username, this.email, this.token});

  factory RegisterationResponse.fromJson(mapOfBody) {
    return RegisterationResponse(
        username: mapOfBody["username"],
        email: mapOfBody["email"],
        token: mapOfBody["token"]);
  }
}

class LoginResponse {
  dynamic token;
  List<dynamic>? non_field_errors;
  LoginResponse({this.token, this.non_field_errors});

  factory LoginResponse.fromJson(mapOfBody) {
    return LoginResponse(
      token: mapOfBody['token'],
      non_field_errors: mapOfBody['non_field_errors'],
    );
  }
}

// token 41c189bfcb1ffebaa29834ae16368c1ae3c6260002f64d87dce21c1b8359406c
// response for error {"username":["user with this username already exists."],"email":["user with this email already exists."]}