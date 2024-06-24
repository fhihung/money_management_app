import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:money_management_app/app/storage_service.dart';

class LoginController {
  final String apiUrl = 'https://371e-14-248-162-193.ngrok-free.app/api/';

  Future<String?> login(String email, String password, BuildContext context) async {
    final url = Uri.parse('${apiUrl}login');
    final storageService = StorageService();
    final response = await http.post(
      url,
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final user = responseData['user']['id'];
      final accessToken = responseData['authorization']['access_token'];
      // Here you can save the token if needed
      await storageService.saveToken(accessToken as String);
      // Here you can save the user if needed
      await storageService.saveUserId(user.toString());
      return accessToken;
    } else {
      throw Exception('Failed to login');
    }
  }
  //
  // // Save user data
  // Future<void> saveUser(MUser user) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final userJson = jsonEncode(user.toJson()); // Convert MUser object to JSON
  //   await prefs.setString('user', userJson);
  // }
}
