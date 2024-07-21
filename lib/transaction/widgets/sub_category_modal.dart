import 'package:flutter/material.dart';
import 'package:money_management_app/models/m_sub_category.dart';

class SubCategoryModal extends StatelessWidget {
  SubCategoryModal({
    required this.categoryId,
    super.key,
  });
  final int categoryId;

  final List<MSubCategory> subCategories = [
    MSubCategory(1, 'Breakfast', 1),
    MSubCategory(2, 'Lunch', 1),
    MSubCategory(3, 'Dinner', 1),
    MSubCategory(4, 'Drink', 1),
    MSubCategory(5, 'Taxi', 2),
    MSubCategory(6, 'Be', 2),
    MSubCategory(7, 'Shopping', 3),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredSubCategories = subCategories.where((subCategory) => subCategory.categoryId == categoryId).toList();

    if (filteredSubCategories.isEmpty) {
      return const Center(child: Text('No subcategories found.'));
    }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: filteredSubCategories.map((subCategory) {
          return ListTile(
            title: Text(subCategory.name ?? 'Unknown'),
            onTap: () {
              Navigator.pop(context);
            },
          );
        }).toList(),
      ),
    );
  }
}
