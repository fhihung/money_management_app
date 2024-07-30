import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:money_management_app/models/m_user.dart';
import 'package:money_management_app/utils/constants/api_constants.dart';

class SettingController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<MUser> getUser(String token) async {
    final url = Uri.parse('${apiUrl}user');
    final response = await http.get(
      headers: {
        'Authorization': 'Bearer $token',
      },
      url,
    );
    if (response.statusCode == 200) {
      return MUser.fromJson(
          jsonDecode(response.body)['user'] as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load user');
    }
  }
}
