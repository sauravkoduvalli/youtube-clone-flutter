
import 'package:flutter/material.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget({
    super.key,
    required this.profileImageUrl,
    required this.title,
    required this.channelName,
    required this.views,
    required this.uploadTime,
    required this.onActionTap,
  });

  final String profileImageUrl, title, channelName, views, uploadTime;
  final Function() onActionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // video container
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.pinkAccent),
        ),
        // Vido title subsitle and other action icon
        Container(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(profileImageUrl),
                    radius: 24,
                  ),
                  const SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        title,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 16.0, overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        '$channelName . $views . $uploadTime',
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.topCenter,
                onPressed: onActionTap,
                icon: const Icon(Icons.more_vert),
              )
            ],
          ),
        ),
      ],
    );
  }
}
