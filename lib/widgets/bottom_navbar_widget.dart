import 'package:flutter/material.dart';
import 'package:youtube/screens/mobile/create_screen.dart';
import 'package:youtube/screens/mobile/home_screen.dart';
import 'package:youtube/screens/mobile/profile_screen.dart';
import 'package:youtube/screens/mobile/shorts_screen.dart';
import 'package:youtube/screens/mobile/subscription_screen.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    ShortsScreen(),
    CreateScreen(),
    SubscriptionScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _screenOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.switch_access_shortcut_add_sharp),
              label: "Shorts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: "Subscription",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "You",
            ),
          ],
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}
