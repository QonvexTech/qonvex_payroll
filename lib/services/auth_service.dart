import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qonvex_payroll/globals/constants.dart';
import 'package:qonvex_payroll/globals/logged_user.dart';
import 'package:qonvex_payroll/models/user_model.dart';

class AuthService{
  Future<bool> login() async{
    try{
      return await http.post(Uri.parse("${API.route}/login")).then((response) {
        var data = json.decode(response.body);
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
