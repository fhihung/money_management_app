// import 'package:dartx/dartx.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_ui_kit/common_view/containers/gesture_container.dart';
// import 'package:flutter_ui_kit/flutter_ui_kit.dart';
// import 'package:flutter_ui_kit/utils/system_actions.dart';
// import 'package:money_management_app/app/app.dart';
// import 'package:money_management_app/utils/theme/app_text_styles.dart';
//
// import '../../resources/generated/assets.gen.dart';
// import '../../utils/date_utils.dart';
// import '../bottom_sheets/round_top_corner_container.dart';
// import '../lists/option_listview.dart';
//
// // import 'package:intl_phone_number_input/intl_phone_number_input.dart';
//
// part 'src/constants/styles.dart';
// part 'src/features/datepicker.dart';
// part 'src/features/panel_picker.dart';
// part 'src/features/password.dart';
// part 'src/features/range_datepicker.dart';
//
// // ignore: must_be_immutable
// class AppTextField extends StatefulWidget {
//   /// A widget that wraps a [TextFormField] with a title and a suffix icon.
//   // ignore: must_be_immutable
//   AppTextField({
//     this.title,
//     this.hintText,
//     this.style,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.inputFormatters = const [],
//     this.controller,
//     this.onChanged,
//     this.onTap,
//     this.keyboardType = TextInputType.text,
//     this.validator,
//     this.autovalidateMode = AutovalidateMode.disabled,
//     this.onSuffixIconPressed,
//     this.readonly = false,
//     this.focusNode,
//     this.decoration = kDefaultInputDecoration,
//     this.requiredIndicator = false,
//     super.key,
//     this.enableinteractiveSelection = true,
//     this.maxLines = 1,
//     this.minLines = 1,
//   });
//
//   /// Creates a [AppTextField] with password input and features.
//   factory AppTextField.password({
//     String? title,
//     String? hintText,
//     Function? onChanged,
//     TextEditingController? controller,
//     VoidCallback? onTap,
//     AutovalidateMode autovalidateMode,
//     String? Function(String?)? validator,
//     FocusNode? focusNode,
//     bool requiredIndicator,
//     List<TextInputFormatter> inputFormatters,
//   }) = _AppPassword;
//
//   /// Creates a [AppTextField] with range datepicker input and features.
//   factory AppTextField.rangeDatepicker({
//     String? title,
//     String? hintText,
//     void Function(List<DateTime>)? onDateChanged,
//     void Function()? onSuffixIconPressed,
//     TextEditingController? controller,
//     AutovalidateMode autovalidateMode,
//     String? Function(String?)? validator,
//     List<DateTime>? selectedDates,
//     bool requiredIndicator,
//     String panelTitle,
//     DateTime? minimumDate,
//     DateTime? maximumDate,
//   }) = _RangeDatepicker;
//
//   /// Creates a [AppTextField] with datepicker input and features.
//   factory AppTextField.datepicker({
//     String? title,
//     String? hintText,
//     Function? onChanged,
//     void Function()? onSuffixIconPressed,
//     Widget? suffixIcon,
//     TextEditingController? controller,
//     VoidCallback? onTap,
//     AutovalidateMode autovalidateMode,
//     String? Function(String?)? validator,
//     CupertinoDatePickerMode mode,
//     bool onlyLaunchPickerOnSuffixIconTap,
//     void Function(DateTime)? onConfirm,
//     bool requiredIndicator,
//     String? panelTitle,
//     DateTime? minimumDate,
//     DateTime? maximumDate,
//     DateTime? initialDate,
//   }) = _Datepicker;
//
//   factory AppTextField.panelPicker({
//     required OptionListTile Function(int) itemBuilder,
//     required int itemCount,
//     int selectedIndex,
//     String? title,
//     String? hintText,
//     Function? onChanged,
//     TextEditingController? controller,
//     AutovalidateMode autovalidateMode,
//     String? Function(String?)? validator,
//     bool requiredIndicator,
//   }) = _PanelPicker;
//
//   /// Create a title label above the text field.
//   final String? title;
//
//   /// Whether the title label should ahave red asterisk to indicate required.
//   final bool requiredIndicator;
//
//   final List<TextInputFormatter>? inputFormatters;
//
//   /// The hint text that is displayed when the text field is empty.
//   String? hintText;
//
//   /// The style that is used to style the text being edited.
//   final TextStyle? style;
//
//   /// The icon that is displayed at the start of the text field.
//   Widget? prefixIcon;
//
//   /// The icon that is displayed at the end of the text field.
//   Widget? suffixIcon;
//
//   /// The callback that is called when the text field is changed.
//   final Function? onChanged;
//
//   /// The callback that is called when the text field is tapped.
//   VoidCallback? onTap;
//
//   /// The type of keyboard that is displayed for editing the text field.
//   final TextInputType keyboardType;
//
//   /// The controller that is used to control the text being edited.
//   final TextEditingController? controller;
//
//   /// The validator that is called when the text field is validated.
//   final String? Function(String?)? validator;
//
//   /// The autovalidate mode that is used to determine when to validate the text
//   final AutovalidateMode autovalidateMode;
//
//   /// The focus node that will be used to focus or unfocus this widget.
//   /// By default, once the focus node is defined, the validation message will
//   /// only be shown when the focus node has focus.
//   final FocusNode? focusNode;
//
//   /// The callback that is called when the suffix icon is pressed.
//   Function()? onSuffixIconPressed;
//
//   /// The decoration that is used to decorate the text field.
//   InputDecoration decoration;
//
//   /// Whether the text field is obscured.
//   bool obscureText = false;
//
//   /// Whether the text field is readonly.
//   bool readonly = false;
//
//   /// Whether the suffix icon is shown.
//   bool showSuffixIcon = false;
//
//   /// Allow system interaction on the text field
//   bool enableinteractiveSelection;
//
//   /// The maximum number of lines that the text field can have.
//   int maxLines;
//
//   /// The minimum number of lines that the text field can have.
//   int minLines;
//
//   Widget buildTextField<T extends AppTextField>(
//     BuildContext context,
//     void Function(VoidCallback fn) setState,
//     T widget,
//   ) {
//     return TextFormField(
//       inputFormatters: inputFormatters,
//       style: widget.style ?? defaultTextStyle,
//       focusNode: widget.focusNode,
//       onTap: widget.onTap,
//       readOnly: widget.readonly,
//       onChanged: (value) {
//         setState(() {
//           showSuffixIcon = value.isNotEmpty;
//           onChanged?.call(value);
//         });
//       },
//       controller: widget.controller,
//       validator: (value) {
//         if (widget.focusNode != null) {
//           return widget.focusNode!.hasFocus ? widget.validator?.call(value) : null;
//         }
//
//         return widget.validator?.call(value);
//       },
//       obscureText: widget.obscureText,
//       minLines: widget.minLines,
//       maxLines: widget.maxLines,
//       autovalidateMode: widget.autovalidateMode,
//       enableInteractiveSelection: widget.enableinteractiveSelection,
//       cursorColor: defaultCursorColor,
//       decoration: widget.decoration.copyWith(
//         prefixIcon: widget.prefixIcon,
//         hintText: widget.hintText,
//         hintStyle: AppTextStyles.bodyRegular.copyWith(
//           color: AppColors.secondaryTextColor,
//         ),
//         suffixIcon: widget.suffixIcon == null && widget.controller?.text.isNotEmpty == true
//             ? widget.showSuffixIcon && !widget.readonly
//                 ? GestureDetector(
//                     onTap: widget.onSuffixIconPressed ??
//                         () {
//                           widget.controller?.clear();
//                           setState(() {
//                             widget.showSuffixIcon = false;
//                           });
//                         },
//                     behavior: HitTestBehavior.opaque,
//                     child: Container(
//                       padding: const EdgeInsets.only(
//                         top: 14,
//                         bottom: 14,
//                       ),
//                       width: 20,
//                       height: 20,
//                       // child: Image.asset(Assets.icons.iconClear.path),
//                     ),
//                   )
//                 : null
//             : widget.suffixIcon,
//       ),
//       keyboardType: widget.keyboardType,
//     );
//   }
//
//   void onInitState(dynamic widget) {
//     showSuffixIcon = controller?.text.isNotEmpty == true;
//   }
//
//   @override
//   State<AppTextField> createState() => _AppTextFieldState();
// }
//
// class _AppTextFieldState extends State<AppTextField> {
//   /// retain the state of suffix icon check upon rebuild
//   @override
//   void initState() {
//     super.initState();
//     widget.onInitState(widget);
//     // widget.showSuffixIcon = widget.controller?.text.isNotEmpty == true;
//   }
//
//   @override
//   void didUpdateWidget(covariant AppTextField oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     widget.showSuffixIcon = widget.controller?.text.isNotEmpty == true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return widget.title != null
//         ? Column(
//             children: [
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: RichText(
//                   text: TextSpan(
//                     text: widget.title,
//                     // style: AppTextStyles.labelSemiBold.copyWith(
//                     //   color: AppColors.neutral900,
//                     // ),
//                     children: [
//                       if (widget.requiredIndicator)
//                         TextSpan(
//                           text: ' *',
//                           // style: AppTextStyles.labelSemiBold.copyWith(
//                           //   color: AppColors.semanticRed500,
//                           // ),
//                         ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               widget.buildTextField(context, setState, widget),
//             ],
//           )
//         : widget.buildTextField(context, setState, widget);
//   }
// }
