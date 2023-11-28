import 'package:flutter/material.dart';
import 'package:lab3/widgets/CustomSliverAppBar.dart';
import 'package:lab3/pages/SettingsPage.dart';
import 'package:lab3/pages/ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const CustomSliverAppBar(),
              ];
            },
            body: const TabBarView(
              children: [
                ProfilePage(),
                SettingPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
