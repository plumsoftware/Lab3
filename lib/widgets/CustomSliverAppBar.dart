import 'package:flutter/material.dart';
import 'package:lab3/themes/AppColors.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: 300,
      actions: [
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          color: AppColors.seed,
          onPressed: () {},
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.close),
        color: AppColors.seed,
        onPressed: () {},
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 30),
                child: Image.asset("lib/assets/images/photo.png"),
              ),
              Text(
                'Екатерина',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 14,
              )
            ],
          ),
        ),
      ),
      bottom: const TabBar(
        tabs: [
          Tab(
            child: Text(
              'Профиль',
            ),
          ),
          Tab(
            child: Text(
              'Настройки',
            ),
          ),
        ],
      ),
    );
  }
}