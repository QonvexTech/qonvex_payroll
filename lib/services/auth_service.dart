import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qonvex_payroll/globals/constants.dart';
import 'package:qonvex_payroll/globals/logged_user.dart';
import 'package:qonvex_payroll/models/user_model.dart';

class AuthService{
  Future<bool> login({required String email, required String password}) async{
    try{
      return await http.post(Uri.parse("${API.domain}api/user/login"),headers: {
        "accept" : "application/json"
      },
      body: {
        "email" : email,
        "password" : password,
      }
      ).then((response) {
        var data = json.decode(response.body);
        print(data.toString());
        if(response.statusCode == 200){
          LoggedUser.details = UserModel.fromJson(data['user']);
          LoggedUser.accessToken = "${data['access_token']}";
        }
        return response.statusCode == 200;
      });
    }
    catch (e){
      return false;
    }
  }
}
