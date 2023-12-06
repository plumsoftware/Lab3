import 'package:flutter/material.dart';
import 'package:lab3/models/ActionModel.dart';
import 'package:lab3/models/CategoryModel.dart';
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
            subtitle:
                'Подписки, автоплатежи и сервисы на которые вы подписались'),
        const HorizontalCategoriesList(
          list: [
            CategoryModel(
                imageName: 'lib/assets/images/sber_prime.png',
                title: 'СберПрайм',
                subtitle: 'Платёж 9 июля',
                cost: '199 ₽',
                period: 'месяц'),
            CategoryModel(
                imageName: 'lib/assets/images/transfer.png',
                title: 'Переводы',
                subtitle: 'Автопродление 21 августа',
                cost: '199 ₽',
                period: 'месяц')
          ],
        ),
        const ProfileItemTitle(
          title: 'Тарифы и лимиты',
          subtitle: 'Для операций в Сбербанк Онлайн',
        ),
        const ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/day_limit.png",
                title: "Изменить суточный лимит",
                subtitle: "На платежи и переводы")),
        const Divider(
          indent: 64,
          height: 2,
        ),
        const ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/transfer_outline.png",
                title: "Переводы без комиссии",
                subtitle: "Показать остаток в этом месяце")),
        const Divider(
          indent: 64,
          height: 2,
        ),
        const ActionItem(
            actionModel: ActionModel(
                imageName: "lib/assets/images/transfer_info.png",
                title: "Информация о тарифах и лимитах",
                subtitle: "")),
        const ProfileItemTitle(
          title: 'Интересы',
          subtitle:
              'Мы подбираем истории и предложения по темам, которые вам нравятся',
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
