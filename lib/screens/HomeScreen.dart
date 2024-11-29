import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(
            "assets/images/youtube-logo-light-mode.svg",
            width: MediaQuery.of(context).size.width * 0.25,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded)),
        ]),
      ),
    );
  }
}

final List<String> filterOnTopics = [
  "All",
  "Podcast",
  "Programming",
  "Fising",
  "Cars",
  "Languages",
];
