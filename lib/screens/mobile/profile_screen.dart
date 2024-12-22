import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: SvgPicture.asset(
              "assets/images/youtube-logo-light-mode.svg",
              width: MediaQuery.of(context).size.width * 0.25,
              fit: BoxFit.contain,
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.cast),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Replace with thumbnail
                  ),
                ),
                title: Text('Video Title $index'),
                subtitle: Text('Channel Name • ${(index + 1) * 10}K views'),
              ),
              childCount: 50, // Number of items in the list
            ),
          ),
        ],
      ),
    );
  }
}
