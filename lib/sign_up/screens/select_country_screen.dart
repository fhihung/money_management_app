import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/sign_up/screens/select_currency_screen.dart';
import 'package:money_management_app/utils/theme/widget_themes/app_text_styles.dart';
import 'package:money_management_app/utils/utils.dart';

class SelectCountryScreen extends StatefulWidget {
  const SelectCountryScreen({super.key});

  @override
  State<SelectCountryScreen> createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {
  String? selectedCountry;
  final List<String> countries = ['USA', 'Canada', 'Mexico'];
  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return Scaffold(
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
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              'Step 1/3',
              style: AppTextStyles.bodyMd2.copyWith(
                color: appColors.textGray,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Select your country',
              style: AppTextStyles.headlineLg.copyWith(
                color: appColors.textBlackDarkVersion,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Please select the country where you currently reside from the menu below.',
              style: AppTextStyles.bodyMd1.copyWith(
                color: appColors.textGray2,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: appColors.border5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: appColors.backgroundWhite2DarkVersion,
                    borderRadius: BorderRadius.circular(8),
                    isExpanded: true,
                    value: selectedCountry,
                    alignment: AlignmentDirectional.bottomCenter,
                    hint: Text(
                      'Select country',
                      style: AppTextStyles.bodySm2.copyWith(
                        color: appColors.textGray2,
                      ),
                    ),
                    icon: Icon(
                      Iconsax.arrow_down_1,
                      color: appColors.textBlackDarkVersion,
                    ),
                    // iconSize: 20,
                    // elevation: 16,
                    // style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue!;
                      });
                    },
                    items: countries.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: AppTextStyles.bodySm2.copyWith(
                            color: appColors.textBlackDarkVersion,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
