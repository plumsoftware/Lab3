import 'package:flutter/material.dart';
import 'package:lab3/widgets/ProfileItemTitle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ProfileItemTitle(
          title: 'У вас подключено',
          subtitle: 'Подписки, автоплатежи и сервисы на которые вы подписались',
        ),
        ProfileItemTitle(
          title: 'Тарифы и лимиты',
          subtitle: 'Для операций в Сбербанк Онлайн',
        ),
      ],
    );
  }
}
