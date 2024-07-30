import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:money_management_app/app/storage_service.dart';
import 'package:money_management_app/setting/bloc/setting_event.dart';
import 'package:money_management_app/setting/bloc/setting_state.dart';
import 'package:money_management_app/setting/controllers/setting_controller.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(const SettingState()) {
    on<SettingInitiated>(
      _onSettingInitiated,
    );
  }

  final storageService = StorageService();
  final settingController = SettingController();

  FutureOr<void> _onSettingInitiated(
    SettingInitiated event,
    Emitter<SettingState> emit,
  ) async {
    final token = await storageService.getToken();
    final user = await settingController.getUser(token ?? '');
    emit(
      state.copyWith(
        user: user,
      ),
    );
  }
}
