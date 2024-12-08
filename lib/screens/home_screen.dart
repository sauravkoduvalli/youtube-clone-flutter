import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube/widgets/suggestion_list_widget.dart';

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
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // suggetsion horizontal scrollview
              SuggestionListWidget(),
              // video list
              
            ],
          ),
        ),
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
                icon: Icon(Icons.subscriptions_outlined),
                label: "Subscription"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "You"),
          ],
          onTap: (int index) {},
        ),
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
