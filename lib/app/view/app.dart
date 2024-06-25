import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/bloc/app_bloc.dart';
import 'package:money_management_app/app/bloc/app_event.dart';
import 'package:money_management_app/app/bloc/app_state.dart';
import 'package:money_management_app/onboarding/screens/onboarding_screen.dart';
import 'package:money_management_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        BlocProvider.of<AppBloc>(context).add(const AppInitiated());
        return MaterialApp(
          title: 'Food Delivery App',
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          // localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: AppLocalizations.supportedLocales,
          home: OnBoardingScreen(),
        );
      },
    );
  }
}
