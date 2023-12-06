import 'package:flutter/material.dart';
import 'package:lab3/models/CategoryModel.dart';
import 'package:lab3/widgets/CategoryItem.dart';

class HorizontalCategoriesList extends StatelessWidget {
  const HorizontalCategoriesList({super.key, required this.list});

  final List<CategoryModel> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: list[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      ),
    );
  }
}
