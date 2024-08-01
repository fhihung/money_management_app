import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:money_management_app/utils/constants/api_constants.dart';

class SignUpController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String phoneNumber,
    required String address,
    int role = 0,
  }) async {
    // Define the API URL
    final String url = '${apiUrl}register';

    // Define the headers
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    // Define the body data
    final Map<String, dynamic> body = {
      "name": name,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation,
      "phone_number": phoneNumber,
      "address": address,
      "role": role,
    };

    try {
      // Make the POST request
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );

      // Check the status code for the result
      if (response.statusCode == 201) {
        jsonDecode(response.body);
        if (kDebugMode) {
          print('User registered successfully.');
        }
        Fluttertoast.showToast(
          msg: 'User registered successfully.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        print('Response body: ${response.body}');
      } else {
        jsonDecode(response.body);
        if (kDebugMode) {
          print('Failed to register user. Status code: ${response.statusCode}');
        }
        await Fluttertoast.showToast(
          msg:
              '${jsonDecode(response.body)['error']}. Status code: ${response.statusCode}',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
