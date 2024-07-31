import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/home/bloc/home_event.dart';
import 'package:money_management_app/home/bloc/home_state.dart';
import 'package:money_management_app/home/controllers/home_controller.dart';
import 'package:money_management_app/transaction/controllers/transaction_controller.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeInitiated>(
      _onHomeInitiated,
    );
  }

  final storageService = StorageService();
  final homeController = HomeController();
  final transactionController = TransactionController();

  FutureOr<void> _onHomeInitiated(
    HomeInitiated event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final userId = await storageService.getUserId();

    final totalBalance = await homeController.getTotalBalance(userId!);

    final totalIncomeAndExpenseForCurrentMonth =
        await homeController.getTotalExpenseAndIncomeForCurrentMonth(userId);

    final transactions =
        await transactionController.getTransactionsForCurrenMonth(
      userId: userId,
    );
    final totalIncomeByWeekForCurrentMonth =
        await homeController.getTotalIncomeByWeekOfCurrentMonth(userId);
    final totalExpenseByWeekForCurrentMonth =
        await homeController.getTotalExpenseByWeekOfCurrentMonth(userId);
    emit(
      state.copyWith(
        isLoading: false,
        totalBalance: totalBalance,
        totalExpenseForCurrentMonth:
            totalIncomeAndExpenseForCurrentMonth['total_expense'] ?? 0,
        totalIncomeForCurrentMonth:
            totalIncomeAndExpenseForCurrentMonth['total_income'] ?? 0,
        transactionsByMonth: transactions ?? [],
        totalIncomeByWeekForCurrentMonth: totalIncomeByWeekForCurrentMonth,
        totalExpenseByWeekForCurrentMonth: totalExpenseByWeekForCurrentMonth,
      ),
    );
  }
}
