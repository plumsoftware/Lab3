import 'package:flutter/material.dart';
import 'package:lab3/models/CategoryModel.dart';
import 'package:lab3/widgets/CategoryItem.dart';

class HorizontalCategoriesList extends StatelessWidget {
  const HorizontalCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Row(
            children: [
              CategoryItem(
                  categoryModel: CategoryModel(
                      imageName: 'lib/assets/images/sber_prime.png',
                      title: 'СберПрайм',
                      subtitle: 'Платёж 9 июля',
                      cost: '199 ₽',
                      period: 'месяц')),
              SizedBox(width: 16)
            ],
          );
        },
      ),
    );
  }
}
