import 'package:flutter/material.dart';
import 'package:money_management_app/app/app.dart';

class CommonSearchField extends StatelessWidget {
  const CommonSearchField({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppSpaces.space6,
          horizontal: AppSpaces.space6,
        ),
        isDense: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: AppSpaces.space5,
            right: AppSpaces.space3,
          ),
          child: Image.asset(
            Assets.icons.regular.magnifer.path,
            color: appColors.backgroundGray3,
          ),
        ),
        prefixIconColor: appColors.backgroundGray3,
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 20,
          maxWidth: 40,
        ),
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              right: AppSpaces.space5,
            ),
            child: Image.asset(
              Assets.icons.regular.filter.path,
              color: appColors.backgroundGray3,
            ),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 20,
          maxWidth: 50,
        ),
        suffixIconColor: appColors.backgroundGray3,
        filled: true,
        fillColor: appColors.backgroundGray7_2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(99),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(99),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(99),
        ),
        hintText: 'Search',
        hintStyle: AppTextStyles.bodySm2.copyWith(
          color: appColors.textGray2,
        ),
      ),
    );
  }
}
