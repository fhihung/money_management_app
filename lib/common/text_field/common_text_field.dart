import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_management_app/app/app.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    required this.controller,
    required this.labelText,
    required this.prefixIcon,
    super.key,
    this.maxLines,
    this.minLines,
    this.height,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
  });

  final TextEditingController controller;
  final String labelText;
  final Widget? prefixIcon;
  final int? maxLines;
  final int? minLines;
  final double? height;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  int _currentTextLength = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateTextLength);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateTextLength);
    super.dispose();
  }

  void _updateTextLength() {
    setState(() {
      _currentTextLength = widget.controller.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    return widget.height != null
        ? SizedBox(
            height: widget.height,
            child: _buildTextField(appColors),
          )
        : _buildTextField(appColors);
  }

  Widget _buildTextField(AppColors appColors) {
    return TextFormField(
      cursorColor: appColors.textBlackDarkVersion,
      style: AppTextStyles.bodySm2.copyWith(
        color: appColors.textBlackDarkVersion,
      ),
      onChanged: (value) {
        setState(() {
          _currentTextLength = value.length;
        });
      },
      maxLength: widget.maxLength,
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      decoration: InputDecoration(
        counterText: widget.maxLength != null ? '$_currentTextLength/${widget.maxLength}' : null,
        counterStyle: widget.maxLength != null && _currentTextLength == widget.maxLength
            ? TextStyle(color: appColors.textRed)
            : TextStyle(color: appColors.textGray2),
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppSpaces.space5,
          horizontal: AppSpaces.space5,
        ),
        labelText: widget.labelText,
        alignLabelWithHint: true,
        labelStyle: AppTextStyles.bodySm2.copyWith(
          color: appColors.textGray2,
        ),
      ),
    );
  }
}
