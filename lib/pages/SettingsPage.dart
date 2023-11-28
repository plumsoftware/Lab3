import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          'Настройки',
          style: Theme.of(context).textTheme.bodyMedium,
        ));
  }
}
