import 'package:boxy/padding.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:money_management_app/app/app.dart';

class SearchDropdownButton extends StatefulWidget {
  const SearchDropdownButton({
    required this.selectedValue,
    required this.listValue,
    required this.onChanged,
    required this.title,
    super.key,
  });
  final String? selectedValue;
  final List<String> listValue;
  final ValueChanged<String?> onChanged;
  final String title;

  @override
  State<SearchDropdownButton> createState() => _SearchDropdownButtonState();
}

class _SearchDropdownButtonState extends State<SearchDropdownButton> {
  final TextEditingController searchCountryController = TextEditingController();
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isDropdownOpen ? appColors.borderPrimary : appColors.border5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          dropdownStyleData: DropdownStyleData(
            padding: EdgeInsets.zero,
            elevation: 0,
            decoration: BoxDecoration(
              border: Border.all(
                color: appColors.border6,
              ),
              borderRadius: BorderRadius.circular(8),
              color: appColors.backgroundWhite2DarkVersion,
            ),
            offset: const Offset(0, -AppSpaces.space2),
          ),
          iconStyleData: IconStyleData(
            openMenuIcon: Padding(
              padding: const EdgeInsets.only(right: AppSpaces.space5),
              child: Assets.icons.linear.svg.arrowUp.svg(
                colorFilter: ColorFilter.mode(
                  appColors.textBlackDarkVersion,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(right: AppSpaces.space5),
              child: Assets.icons.linear.svg.arrowDown1.svg(
                colorFilter: ColorFilter.mode(
                  appColors.textBlackDarkVersion,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          isExpanded: true,
          value: widget.selectedValue,
          hint: OverflowPadding(
            padding: const EdgeInsets.only(
              left: -4,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.linear.svg.bank.svg(
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    appColors.textGray2,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: AppSpaces.space2),
                Text(
                  widget.title,
                  style: AppTextStyles.bodySm2.copyWith(
                    color: appColors.textGray2,
                  ),
                ),
              ],
            ),
          ),
          onChanged: (String? newValue) {
            widget.onChanged(newValue);
            setState(() {
              isDropdownOpen = false;
            });
          },
          onMenuStateChange: (isOpen) {
            setState(() {
              isDropdownOpen = isOpen;
            });
          },
          items: widget.listValue.map<DropdownMenuItem<String>>((
            String value,
          ) {
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
          dropdownSearchData: DropdownSearchData(
            searchController: searchCountryController,
            searchInnerWidgetHeight: 50,
            searchInnerWidget: Container(
              padding: const EdgeInsets.only(
                top: 16,
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                controller: searchCountryController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: AppSpaces.space5,
                    horizontal: AppSpaces.space5,
                  ),
                  isDense: true,
                  labelText: S.search,
                  prefixIcon: Icon(
                    Iconsax.search_normal_1,
                    size: 16,
                    color: appColors.backgroundGray2,
                  ),
                  hintStyle: AppTextStyles.bodySm2.copyWith(
                    color: appColors.textGray3,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: appColors.backgroundGray7_2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
