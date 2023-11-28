import 'package:flutter/material.dart';
import 'package:lab3/widgets/CustomSliverAppBar.dart';
import 'package:lab3/pages/ProfilePage.dart';
import 'package:lab3/pages/SettingsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const CustomSliverAppBar(),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: const [
                ProfilePage(),
                ProfilePage(),
                // SettingsPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
