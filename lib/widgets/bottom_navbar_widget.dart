import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Shorts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Create"),
          
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "You"),
        ],
        onTap: (int index) {},
      ),
    ));
  }
}
