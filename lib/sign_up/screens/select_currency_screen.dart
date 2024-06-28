import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/common/common_modal_bottom_sheet.dart';
import 'package:money_management_app/resources/generated/assets.gen.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_bloc.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_event.dart';
import 'package:money_management_app/sign_up/bloc/sign_up_state.dart';
import 'package:money_management_app/sign_up/widgets/search_dropdown_button.dart';
import 'package:money_management_app/utils/utils.dart';

class SelectCurrencyScreen extends StatefulWidget {
  const SelectCurrencyScreen({super.key});

  @override
  State<SelectCurrencyScreen> createState() => _SelectCurrencyScreenState();
}

class _SelectCurrencyScreenState extends State<SelectCurrencyScreen> {
  final List<String> countries = ['USD', 'YEN', 'VND'];
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
                bloc.add(CurrencySelected(selectedCurrency: selectedValue));
                showModalBottomSheet<void>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSpaces.space8),
                  ),
                  backgroundColor: appColors.backgroundWhite2DarkVersion,
                  context: context,
                  builder: (context) {
                    return CommonModalBottomSheet(
                      title: S.notification,
                      subtitle: S.turnOnNotification,
                      image: Assets.images.notificationApp.image(
                        width: 100,
                        height: 100,
                      ),
                      textButton: S.done,
                      onPressedElevatedButton: () {
                        Navigator.pop(context);
                      },
                    );
                  },
                );
              },
              child: Text(
                state.selectedCountry != null ? state.selectedCountry! : S.skip,
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
                  'Step 2/2',
                  style: AppTextStyles.bodyMd2.copyWith(
                    color: appColors.textGray,
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space5,
                ),
                Text(
                  S.selectCurrencyTitle,
                  style: AppTextStyles.headlineLg.copyWith(
                    color: appColors.textBlackDarkVersion,
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space5,
                ),
                Text(
                  S.selectCurrencySubtitle,
                  style: AppTextStyles.bodyMd1.copyWith(
                    color: appColors.textGray2,
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space10,
                ),
                SearchDropdownButton(
                  title: S.selectCurrency,
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
