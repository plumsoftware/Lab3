import 'package:flutter/material.dart';

class ProfileItemTitle extends StatelessWidget {
  const ProfileItemTitle(
      {super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displayLarge,
            softWrap: true,
          ),
          const SizedBox(height: 8),
          Text(
            textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: true),
            subtitle,
            style: Theme.of(context).textTheme.displayMedium,
            softWrap: true,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
