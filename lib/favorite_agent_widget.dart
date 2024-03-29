import 'package:flutter/material.dart';
import 'package:weekly1/color.dart';
import 'package:weekly1/fav_agent.dart';
import 'package:weekly1/text_styles.dart';

class FavoriteAgentWidget extends StatelessWidget {
  const FavoriteAgentWidget({
    super.key,
    required this.favoriteAgent,
  });

  final FavoriteAgent favoriteAgent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Your Favorite',
          style: MyTextStyle.largeText,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorConst.darkgrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: Image.asset(
                  'assets/images/${favoriteAgent.agent}.png',
                  height: 140,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Agent Name : ${favoriteAgent.agent!.substring(0, 1).toUpperCase() + favoriteAgent.agent!.substring(1)}',
                    style: MyTextStyle.smallText,
                  ),
                  Text(
                    'Username : ${favoriteAgent.name}',
                    style: MyTextStyle.smallText,
                  ),
                  Text(
                    'Email : ${favoriteAgent.email}',
                    style: MyTextStyle.smallText,
                  ),
                  Text(
                    'Description : ${favoriteAgent.description}',
                    style: MyTextStyle.smallText,
                    softWrap: true,
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
