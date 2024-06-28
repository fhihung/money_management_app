import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_event.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_state.dart';
import 'package:money_management_app/sign_up/screens/select_currency_screen.dart';
import 'package:money_management_app/sign_up/widgets/search_dropdown_button.dart';
import 'package:money_management_app/utils/utils.dart';

class SelectCountryScreen extends StatefulWidget {
  const SelectCountryScreen({super.key});

  @override
  State<SelectCountryScreen> createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {
  String? selectedCountry;
  final List<String> countries = ['USA', 'Canada', 'Mexico'];
  String? selectedValue;
  final TextEditingController searchCountryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        final bloc = context.read<SignUpBloc>();
        return Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ElevatedButton(
              onPressed: () {
                bloc.add(CountrySelected(selectedCountry: selectedValue));
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const SelectCurrencyScreen(),
                  ),
                );
              },
              child: Text(
                S.continueText,
                style: AppTextStyles.buttonLg.copyWith(
                  color: appColors.backgroundWhite,
                ),
              ),
            ),
          ),
          appBar: AppBar(
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const SelectCurrencyScreen(),
                    ),
                  );
                },
                child: Text(
                  S.skip,
                  style: AppTextStyles.buttonSm.copyWith(
                    color: appColors.textGray2,
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.sm),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpaces.space7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppSpaces.space7,
                ),
                Text(
                  'Step 1/2',
                  style: AppTextStyles.bodyMd2.copyWith(
                    color: appColors.textGray,
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space5,
                ),
                Text(
                  S.selectCountryTitle,
                  style: AppTextStyles.headlineLg.copyWith(
                    color: appColors.textBlackDarkVersion,
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space5,
                ),
                Text(
                  S.selectCountrySubtitle,
                  style: AppTextStyles.bodyMd1.copyWith(
                    color: appColors.textGray2,
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space10,
                ),
                SearchDropdownButton(
                  title: S.selectCountry,
                  selectedValue: selectedValue,
                  listValue: countries,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
