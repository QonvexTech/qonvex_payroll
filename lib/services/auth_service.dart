import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:qonvex_payroll/globals/constants.dart';
import 'package:qonvex_payroll/globals/logged_user.dart';
import 'package:qonvex_payroll/models/user_model.dart';
import 'package:qonvex_payroll/register.dart';

class AuthService {
  Future<bool> login({required String email, required String password}) async {
    try {
      return await http
          .post(Uri.parse("${API.domain}api/user/login"), headers: {
        "accept": "application/json"
      }, body: {
        "email": email,
        "password": password,
      }).then((response) {
        var data = json.decode(response.body);
        print(data.toString());
        if (response.statusCode == 200) {
          LoggedUser.details = UserModel.fromJson(data['user']);
          LoggedUser.accessToken = "${data['access_token']}";
          return true;
        }
        if (data['message'] != null) {
          Fluttertoast.showToast(msg: "${data['message']}");
        }
        return false;
      });
    } catch (e) {
      return false;
    }
  }
  Future<bool> register({required String email,
    required String fullname,
    required String password}) async {
    return await http
        .post(Uri.parse("${API.domain}api/user/register"), headers: {
      "accept": "application/json"
    }, body: {
      "email": email,
      "first_name": fullname,
      "password": password,
    }).then((response) {
      var data = json.decode(response.body);
      print(data.toString());
      if (response.statusCode == 200) {
        LoggedUser.details = UserModel.fromJson(data['user']);
        LoggedUser.accessToken = "${data['access_token']}";
      }
      return response.statusCode == 200;
    }
    );
  }
  // Future<bool> profile(
  //     {required String age,
  //     required String gender,
  //     required String contactNumber,
  //     required String address}) async {
  //   return await http
  //       .post(Uri.parse("${API.domain}api/user/update-employee"), headers: {
  //     "accept": "application/json"
  //   }, body: {
  //     "age": age,
  //     "gender": gender,
  //     "contact_number": contactNumber,
  //     "address": address,
  //   }).then((response) {
  //     var data = json.decode(response.body);
  //     print(data.toString());
  //     if (response.statusCode == 200) {
  //       LoggedUser.details = UserModel.fromJson(data['user']);
  //       LoggedUser.accessToken = "${data['access_token']}";
  //     }
  //     return response.statusCode == 200;
  //   });
  // }
}

