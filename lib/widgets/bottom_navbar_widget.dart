import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.switch_access_shortcut_add_sharp),
              label: "Shorts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: "Subscription"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "You"),
        ],
        onTap: (int index) {},
      ),
    ));
  }
}
