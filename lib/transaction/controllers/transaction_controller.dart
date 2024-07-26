import 'package:money_management_app/models/m_transaction.dart';
import 'package:money_management_app/utils/local_storage/database_helper.dart';

class TransactionController {
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  Future<int> createTransaction(MTransaction transaction) async {
    final db = await _databaseHelper.database;
    return db.insert('transactions', transaction.toJson());
  }

  // Future<List<MTransaction>> getTransactions() async {
  //   final db = await _databaseHelper.database;
  //
  //   final result = await db.rawQuery('''
  //    SELECT t.id, t.title, t.amount, t.transactionDate, t.note,
  //          c.id as categoryId, c.name as categoryName, c.categoryType as categoryType, c.icon as categoryIcon
  //   FROM transactions t
  //   JOIN categories c ON t.categoryId = c.id
  //   ''');
  //
  //   // Chuyển đổi kết quả thành danh sách các đối tượng Transaction
  //   return result.map((json) {
  //     return MTransaction.fromJson(json);
  //   }).toList();
  // }

  Future<List<MTransaction>> getTransactions() async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> results = await db.query('transactions');
    return results.map(MTransaction.fromJson).toList();
  }
}
