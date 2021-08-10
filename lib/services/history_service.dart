import 'dart:convert';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:qonvex_payroll/globals/constants.dart';
import 'package:qonvex_payroll/globals/logged_user.dart';

class HistoryService {
  Future<bool> get() async {
    try {
      return await http
          .post(Uri.parse("${API.domain}api/employee_payroll"), headers: {
        "accept": "application/json",
        HttpHeaders.authorizationHeader : "Bearer ${LoggedUser.accessToken}"
      },).then((response) {
        var data = json.decode(response.body);
        print(data.toString());
        if (response.statusCode == 200) {
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
}