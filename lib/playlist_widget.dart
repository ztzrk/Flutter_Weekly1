import 'package:flutter/material.dart';
import 'package:weekly1/color.dart';
import 'package:weekly1/text_styles.dart';

class PlaylistWidget extends StatelessWidget {
  const PlaylistWidget({
    super.key,
    required this.listAgent,
    required this.title,
  });

  final List<String> listAgent;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: MyTextStyle.largeText,
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listAgent.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConst.darkgrey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 24, left: 16, right: 16),
                          child: Image.asset(
                            'assets/images/${listAgent[index]}.png',
                            height: 120,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'This is ${listAgent[index]}',
                        style: MyTextStyle.smallText,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
