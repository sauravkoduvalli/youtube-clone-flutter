import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/video_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: true,
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
            (context, index) => VideoCardWidget(
              profileImageUrl: 'assets/images/saurav_k.jpg',
              title: 'Youtube Clone app using Flutter',
              channelName: 'QBit',
              views: '3M views',
              uploadTime: '3 days',
              onActionTap: () {},
            ),
            childCount: 50,
          ),
        ),
      ],
    );
  }
}
