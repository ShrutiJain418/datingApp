// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pawan_s_application2/presentation/chat_screen/chat_screen.dart';
import 'package:pawan_s_application2/presentation/main_screen/main_screen.dart';
import 'package:pawan_s_application2/presentation/matches_page/matches_page.dart';
import 'package:pawan_s_application2/presentation/messages_page/messages_page.dart';
import 'package:pawan_s_application2/presentation/pricing_screen/pricing_screen.dart';
import 'package:pawan_s_application2/presentation/profile/profile_info.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 5, vsync: this, initialIndex: widget.currentIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 70.0,
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.all_inclusive_rounded),
            ),
            Tab(
              icon: Icon(Icons.message_rounded),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ],
          indicatorColor: Colors.pink,
          labelColor: Colors.pink,
          unselectedLabelColor: Colors.grey,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(), // Disable swipe to navigate
        children: [
          MainScreen(),
          MatchesPage(),
          ChatScreen(),
          //PricingScreen(),
          MessagesPage(),
          ProfileInfoScreen(),
        ],
      ),
    );
  }
}
