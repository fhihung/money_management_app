import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:money_management_app/utils/constants/api_constants.dart';

class HomeController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<num> getTotalBalance(String userId) async {
    try {
      final url = Uri.parse('${apiUrl}total_balance').replace(
        queryParameters: {'user_id': userId},
      );
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
        return jsonResponse['total_balance'] as num;
      } else {
        if (kDebugMode) {
          print(
            'Failed to load transactions. Status code: ${response.statusCode}',
          );
        }
        return 0;
      }
    } catch (e) {
      throw Exception('Failed to load total balance');
    }
  }

  Future<Map<String, num>> getTotalExpenseAndIncomeForCurrentMonth(
      String userId) async {
    try {
      final url =
          Uri.parse('${apiUrl}total_income_and_expense_for_current_month')
              .replace(
        queryParameters: {'user_id': userId},
      );
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
        final totalIncome = jsonResponse['total_income'] as num;
        final totalExpense = jsonResponse['total_expense'] as num;
        return {'total_income': totalIncome, 'total_expense': totalExpense};
      } else {
        if (kDebugMode) {
          print(
              'Failed to load transactions. Status code: ${response.statusCode}');
        }
        return {'total_income': 0, 'total_expense': 0};
      }
    } catch (e) {
      throw Exception('Failed to load total balance');
    }
  }

  Future<List<Map<String, dynamic>>> getTotalIncomeByWeekOfCurrentMonth(
      String userId) async {
    try {
      final url = Uri.parse('${apiUrl}income_by_week_of_current_month').replace(
        queryParameters: {'user_id': userId},
      );
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse.map((e) => e as Map<String, dynamic>).toList();
      } else {
        if (kDebugMode) {
          print(
              'Failed to load transactions. Status code: ${response.statusCode}');
        }
        return [];
      }
    } catch (e) {
      if (kDebugMode) {
        print('Exception occurred: $e');
      }
      throw Exception('Failed to load transactions');
    }
  }

  Future<List<Map<String, dynamic>>> getTotalExpenseByWeekOfCurrentMonth(
      String userId) async {
    try {
      final url =
          Uri.parse('${apiUrl}expense_by_week_of_current_month').replace(
        queryParameters: {'user_id': userId},
      );
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse.map((e) => e as Map<String, dynamic>).toList();
      } else {
        if (kDebugMode) {
          print(
              'Failed to load transactions. Status code: ${response.statusCode}');
        }
        return [];
      }
    } catch (e) {
      if (kDebugMode) {
        print('Exception occurred: $e');
      }
      throw Exception('Failed to load transactions');
    }
  }
}
