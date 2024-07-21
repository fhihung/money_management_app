import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_management_app/app/app.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    required this.controller,
    required this.labelText,
    required this.prefixIcon,
    super.key,
    this.maxLines,
    this.keyboardType,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String labelText;
  final Widget? prefixIcon;
  final int? maxLines;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return TextField(
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppSpaces.space5,
          horizontal: AppSpaces.space5,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: AppSpaces.space5,
            right: AppSpaces.space3,
          ),
          child: prefixIcon,
        ),
        prefixIconConstraints: const BoxConstraints(
          maxWidth: 44,
          maxHeight: 44,
        ),
        prefixIconColor: appColors.textGray2,
        labelText: labelText,
        labelStyle: AppTextStyles.bodySm2.copyWith(
          color: appColors.textGray2,
        ),
      ),
    );
  }
}
