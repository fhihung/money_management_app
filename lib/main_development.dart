import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/bloc/app_bloc.dart';
import 'package:money_management_app/app/view/app.dart';
import 'package:money_management_app/login/bloc/login_bloc.dart';
import 'package:money_management_app/onboarding/bloc/onboarding_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_bloc.dart';

void main() {
  bootstrap(() {
    return Future.value(const App());
  });
}

Future<void> bootstrap(Future<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  // AppColors.current = AppColors.lightThemeColor;

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<OnBoardingBloc>(
          create: (context) => OnBoardingBloc(),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<SignUpBloc>(
          create: (context) => SignUpBloc(),
        ),
        BlocProvider<AppBloc>(
          create: (context) => AppBloc(),
        ),
      ],
      child: await builder(),
    ),
  );
}
