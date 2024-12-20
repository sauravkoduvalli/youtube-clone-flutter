import 'package:flutter/material.dart';

import '../widgets/video_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SuggestionListWidget(),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return VideoCardWidget(
                profileImageUrl: 'assets/images/saurav_k.jpg',
                title: 'Youtube Clone app using Flutter',
                channelName: 'QBit',
                views: '3M views',
                uploadTime: '3 days',
                onActionTap: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
