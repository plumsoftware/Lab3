import 'package:flutter/material.dart';
import 'package:lab3/models/CategoryModel.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 20,
          backgroundColor: Colors.white,
          primary: Colors.white,
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.black.withAlpha(70),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    categoryModel.imageName,
                    width: 36,
                    height: 36,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    categoryModel.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    categoryModel.subtitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${categoryModel.cost} в ${categoryModel.period}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
