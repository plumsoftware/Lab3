import 'package:flutter/material.dart';
import 'package:lab3/models/ActionModel.dart';
import 'package:lab3/themes/AppColors.dart';

class ActionItem extends StatelessWidget {
  const ActionItem({super.key, required this.actionModel});

  final ActionModel actionModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            actionModel.imageName,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 14,
                ),
                Wrap(
                  children: [
                    Text(
                      actionModel.title,
                      style: Theme.of(context).textTheme.displaySmall,
                      softWrap: true,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Wrap(
                  children: [
                    Text(
                      actionModel.subtitle,
                      style: Theme.of(context).textTheme.displayMedium,
                      softWrap: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            color: AppColors.subtitle,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
