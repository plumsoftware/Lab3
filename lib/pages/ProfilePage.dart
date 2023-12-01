import 'package:flutter/material.dart';
import 'package:lab3/models/ActionModel.dart';
import 'package:lab3/widgets/ActionItem.dart';
import 'package:lab3/widgets/Chips.dart';
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
      children: [
        const ProfileItemTitle(
            title: 'У вас подключено',
            subtitle: 'Подписки, автоплатежи и сервисы на которые вы подписались'),
        const HorizontalCategoriesList(),
        const ProfileItemTitle(
          title: 'Тарифы и лимиты',
          subtitle: 'Для операций в Сбербанк Онлайн',
        ),
        const ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/day_limit.png",
                title: "Изменить суточный лимит",
                subtitle: "На платежи и переводы")),
        const Padding(
          padding: EdgeInsets.only(left: 64),
          child: Divider(
            height: 2,
          ),
        ),
        const ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/transfer_outline.png",
                title: "Переводы без комиссии",
                subtitle: "Показать остаток в этом месяце")),
        const Padding(
          padding: EdgeInsets.only(left: 64),
          child: Divider(
            height: 2,
          ),
        ),
        const ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/transfer_info.png",
                title: "Информация о тарифах и лимитах",
                subtitle: "")),
        const ProfileItemTitle(
          title: 'Интересы',
          subtitle: 'Мы подбираем истории и предложения по темам, которые вам нравятся',
        ),
        Chips(items: [
          ChipModel(title: "Еда", selected: false),
          ChipModel(title: "Саморазвитие", selected: false),
          ChipModel(title: "Технологии", selected: false),
          ChipModel(title: "Дом", selected: false),
          ChipModel(title: "Досуг", selected: false),
          ChipModel(title: "Забота о себе", selected: false),
          ChipModel(title: "Наука", selected: false)
        ])
      ],
    );
  }
}
