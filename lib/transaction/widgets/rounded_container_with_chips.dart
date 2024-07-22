import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_event.dart';
import 'package:money_management_app/transaction/pages/create_transaction/bloc/create_transaction_state.dart';

class RoundedContainerWithChips extends StatelessWidget {
  const RoundedContainerWithChips({
    required this.title,
    required this.icon,
    super.key,
    this.padding,
  });

  final Widget title;
  final Widget icon;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return BlocBuilder<CreateTransactionBloc, CreateTransactionState>(
      builder: (context, state) {
        final selectedSubCategories = state.selectedSubCategory ?? [];

        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpaces.space5,
            vertical: 13,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: appColors.backgroundWhite2DarkVersion,
            borderRadius: BorderRadius.circular(AppSpaces.space3),
            border: Border.all(
              color: appColors.border5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: padding ??
                          EdgeInsets.only(
                            top: selectedSubCategories.isNotEmpty ? 2 : 0,
                          ),
                      child: icon),
                  const SizedBox(width: AppSpaces.space2),
                  Expanded(
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: selectedSubCategories.isNotEmpty
                          ? selectedSubCategories.map((subCategory) {
                              return Chip(
                                visualDensity: const VisualDensity(
                                  vertical: -4,
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                label: Text(subCategory.name ?? ''),
                                onDeleted: () {
                                  context.read<CreateTransactionBloc>().add(
                                        SubCategoryDeselected(subCategory),
                                      );
                                },
                              );
                            }).toList()
                          : [
                              DefaultTextStyle(
                                style: AppTextStyles.bodySm2.copyWith(
                                  color: appColors.textGray2,
                                ),
                                child: title,
                              ),
                            ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
