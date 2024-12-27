import 'package:flutter/material.dart';
import 'package:whatsapp_business/views/updates-screen.dart';
import '../widgets/bottom-navbar-widget.dart';
import 'calls-screen.dart';
import 'chats-screen.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ChatsScreen(),
    CallsScreen(),
    UpdatesScreen(),
    //ToolsScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavbarWidget(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
