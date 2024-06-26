import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:money_management_app/login/screens/login_screen.dart';
import 'package:money_management_app/models/m_user.dart';
import 'package:money_management_app/utils/utils.dart';

class SignUpController {
  final String apiUrl = 'https://371e-14-248-162-193.ngrok-free.app/api/';

  Future<MUser?> register(
    String? address,
    String? phoneNumber, {
    required String name,
    required int role,
    required String email,
    required String password,
    required String passwordConfirmation,
    required BuildContext context,
  }) async {
    final response = await http.post(
      Uri.parse('${apiUrl}register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': name.toString(),
        'role': role.toString(),
        'email': email.toString(),
        'password': password.toString(),
        'password_confirmation': passwordConfirmation.toString(),
        'address': address.toString(),
        'phone_number': phoneNumber.toString(),
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      if (jsonResponse is Map<String, dynamic>) {
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              // backgroundColor: AppColors.current.white,
              title: Text(
                'Registration Successful',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              content: const Text(
                'Your account has been created successfully.',
                textAlign: TextAlign.center,
              ),
              actions: <Widget>[
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );

        return MUser.fromJson(jsonResponse);
      } else {
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              // backgroundColor: AppColors.current.white,
              title: Text(
                'Unexpected response format.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium!.apply(
                      color: AppColors.current.textBlackDarkVersion,
                    ),
              ),
              content: const Text('The response was not in the expected format.'),
              actions: <Widget>[
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: const Text('Again'),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                  ),
                ),
              ],
            );
          },
        );
        if (kDebugMode) {
          print('Unexpected response format.');
        }
        return null;
      }
    } else {
      await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            // backgroundColor: AppColors.current.white,
            title: Text(
              'Failed to register user',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium!.apply(
                    color: AppColors.current.textBlackDarkVersion,
                  ),
            ),
            content: Text(
              'Status Code: ${response.statusCode}',
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: const Text('Again'),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ),
            ],
          );
        },
      );
      if (kDebugMode) {
        print('Failed to register user: ${response.statusCode}');
      }
      return null;
    }
  }
}
