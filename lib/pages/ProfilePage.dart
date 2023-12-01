import 'package:flutter/material.dart';
import 'package:lab3/models/ActionModel.dart';
import 'package:lab3/widgets/ActionItem.dart';
import 'package:lab3/widgets/ProfileItemTitle.dart';
import 'package:lab3/widgets/HorizontalCategoriesList.dart';

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
            subtitle: 'Подписки, автоплатежи и сервисы на которые вы подписались'),
        HorizontalCategoriesList(),
        ProfileItemTitle(
          title: 'Тарифы и лимиты',
          subtitle: 'Для операций в Сбербанк Онлайн',
        ),
        ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/day_limit.png",
                title: "Изменить суточный лимит",
                subtitle: "На платежи и переводы")),
        Padding(
          padding: EdgeInsets.only(left: 64),
          child: Divider(
            height: 2,
          ),
        ),
        ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/transfer_outline.png",
                title: "Переводы без комиссии",
                subtitle: "Показать остаток в этом месяце")),
        Padding(
          padding: EdgeInsets.only(left: 64),
          child: Divider(
            height: 2,
          ),
        ),
        ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/transfer_info.png",
                title: "Информация о тарифах и лимитах",
                subtitle: "")),
      ],
    );
  }
}
