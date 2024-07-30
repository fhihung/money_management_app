import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/models/m_account.dart';
import 'package:money_management_app/models/m_response.dart';
import 'package:money_management_app/models/m_transaction.dart';
import 'package:money_management_app/utils/constants/api_constants.dart';

import '../../models/m_category.dart';

class TransactionController {
  final baseUrl = APIConstants.apiBaseUrl;

  Future<MResponse?> createTransaction({
    required MTransaction transaction,
  }) async {
    try {
      final storageService = StorageService();
      final userId = await storageService.getUserId();

      // Convert all values to the appropriate types and then encode to JSON
      final response = await http.post(
        Uri.parse('${baseUrl}create_transaction'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'title': transaction.title,
          'account_id': transaction.accountId,
          'category_id': transaction.categoryId,
          'amount': transaction.amount,
          'note': transaction.note,
          'transaction_date': transaction.transactionDate?.toIso8601String(),
          'user_id': userId,
        }),
      );

      if (response.statusCode == 200) {
        return MResponse(
          statusCode: response.statusCode,
        );
      } else {
        return MResponse(
          statusCode: response.statusCode,
        );
      }
    } catch (e) {
      // Handle network or other errors
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return null;
    }
  }

  Future<List<Map<String, List<MTransaction>>>?> getTransactionsByUserId(
      String userId) async {
    try {
      final uri = Uri.parse('${baseUrl}transactions_by_user_id').replace(
        queryParameters: {
          'user_id': userId.toString(),
        },
      );

      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        final List<Map<String, List<MTransaction>>> transactionsByDate = [];

        for (var entry in jsonResponse) {
          final date = entry['date'] as String;
          final transactionsJson = entry['transactions'] as List<dynamic>;
          final transactions = transactionsJson
              .map((transactionJson) => MTransaction.fromJson(
                  transactionJson as Map<String, dynamic>))
              .toList();
          transactionsByDate.add({date: transactions});
        }

        return transactionsByDate;
      } else {
        if (kDebugMode) {
          print(
              'Failed to load transactions. Status code: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      // Handle network or other errors
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return null;
    }
  }

  Future<List<MCategory>> getCategories() async {
    try {
      final uri = Uri.parse('${baseUrl}categories');

      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse
            .map((category) =>
                MCategory.fromJson(category as Map<String, dynamic>))
            .toList();
      } else {
        if (kDebugMode) {
          print(
              'Failed to load categories. Status code: ${response.statusCode}');
        }
        return [];
      }
    } catch (e) {
      // Xử lý lỗi mạng hoặc các lỗi khác
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return [];
    }
  }

  Future<List<MAccount>> getAccounts(String userId) async {
    try {
      final uri = Uri.parse('${baseUrl}accounts_by_user_id').replace(
        queryParameters: {
          'user_id': userId,
        },
      );

      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse
            .map((category) =>
                MAccount.fromJson(category as Map<String, dynamic>))
            .toList();
      } else {
        if (kDebugMode) {
          print('Failed to load accounts. Status code: ${response.statusCode}');
        }
        return [];
      }
    } catch (e) {
      // Xử lý lỗi mạng hoặc các lỗi khác
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return [];
    }
  }

  Future<List<MCategory>> getCategoriesByType(String type) async {
    try {
      final uri = Uri.parse('${baseUrl}categories_by_type').replace(
        queryParameters: {
          'type': type,
        },
      );

      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse
            .map((category) =>
                MCategory.fromJson(category as Map<String, dynamic>))
            .toList();
      } else {
        if (kDebugMode) {
          print(
              'Failed to load categories by type. Status code: ${response.statusCode}');
        }
        return [];
      }
    } catch (e) {
      // Xử lý lỗi mạng hoặc các lỗi khác
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return [];
    }
  }

  Future<List<MTransaction>?> getTransactionsByDate({
    required String userId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      // Build query parameters conditionally
      final queryParameters = <String, String>{
        'user_id': userId,
      };

      if (startDate != null) {
        queryParameters['start_date'] =
            DateFormat('yyyy-MM-dd').format(startDate);
      }

      if (endDate != null) {
        queryParameters['end_date'] = DateFormat('yyyy-MM-dd').format(endDate);
      }

      // Create the URI with query parameters
      final uri = Uri.parse('${baseUrl}transactions_by_date').replace(
        queryParameters: queryParameters,
      );

      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse
            .map((transaction) =>
                MTransaction.fromJson(transaction as Map<String, dynamic>))
            .toList();
      } else {
        if (kDebugMode) {
          print(
              'Failed to load transactions by date. Status code: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      // Handle network or other errors
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return null;
    }
  }

  Future<List<MTransaction>?> getTransactionsForCurrentWeek({
    required String userId,
  }) async {
    try {
      final queryParameters = <String, String>{
        'user_id': userId,
      };

      // Create the URI with query parameters
      final uri = Uri.parse('${baseUrl}transactions_for_current_week').replace(
        queryParameters: queryParameters,
      );

      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse
            .map((transaction) =>
                MTransaction.fromJson(transaction as Map<String, dynamic>))
            .toList();
      } else {
        if (kDebugMode) {
          print(
              'Failed to load transactions by week. Status code: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      // Handle network or other errors
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return null;
    }
  }

  Future<List<MTransaction>?> getTransactionsForCurrenMonth({
    required String userId,
  }) async {
    try {
      final queryParameters = <String, String>{
        'user_id': userId,
      };

      // Create the URI with query parameters
      final uri = Uri.parse('${baseUrl}transactions_for_current_month').replace(
        queryParameters: queryParameters,
      );

      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body) as List<dynamic>;
        return jsonResponse
            .map((transaction) =>
                MTransaction.fromJson(transaction as Map<String, dynamic>))
            .toList();
      } else {
        if (kDebugMode) {
          print(
              'Failed to load transactions by month. Status code: ${response.statusCode}');
        }
        return null;
      }
    } catch (e) {
      // Handle network or other errors
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return null;
    }
  }
}
