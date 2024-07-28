import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:money_management_app/models/m_response.dart';
import 'package:money_management_app/utils/constants/api_constants.dart';

import '../../models/m_user.dart';

class LoginController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<MResponse> login(String email, String password, BuildContext context) async {
    final url = Uri.parse('${apiUrl}login');
    final response = await http.post(
      url,
      body: {
        'email': email,
        'password': password,
      },
    );

    return MResponse(
      body: jsonDecode(response.body),
      statusCode: response.statusCode,
    );
  }

  Future<MUser> getUser(String token) async {
    final url = Uri.parse('${apiUrl}user');
    final response = await http.get(
      headers: {
        'Authorization': 'Bearer $token',
      },
      url,
    );
    if (response.statusCode == 200) {
      return MUser.fromJson(jsonDecode(response.body)['user'] as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load user');
    }
  }
}
