import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/bottom_navbar_widget.dart';

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
              onPressed: () => debugPrint("First icon pressed"),
              icon: const Icon(Icons.cast_outlined),
            ),
            IconButton(
              onPressed: () => debugPrint("Second icon pressed"),
              icon: const Icon(Icons.notifications_none_outlined),
            ),
            IconButton(
              onPressed: () => debugPrint("third icon pressed"),
              icon: const Icon(Icons.search_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // suggetsion horizontal scrollview
              // SuggestionListWidget(),
              // video list
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // video container

                  // lIstview

                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Youtube title"),
                    subtitle: Text("subtitle"),
                    isThreeLine: true,
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_outlined),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavbarWidget(),
      ),
    );
  }
}
