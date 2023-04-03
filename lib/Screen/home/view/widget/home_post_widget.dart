import 'dart:math';

import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/const_color.dart';
import '../../../../core/const_style.dart';

class HomePostWidget extends StatelessWidget {
  const HomePostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            leading: DashedCircle(
              color: authbuttoncolor,
              dashes: 2,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
              ),
            ),
            title: const Text(
              'Nihal',
              style: textwhitecolor,
            ),
            subtitle: const Text(
              'Muhammed nihal cp',
              style: textwhitecolor,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: colorWhith,
              ),
            ),
          ),
          const Image(
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: colorWhith,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment_rounded,
                  color: colorWhith,
                ),
              ),
              Transform.rotate(
                angle: -30 * pi / 180,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: colorWhith,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                  color: colorWhith,
                ),
              )
            ],
          ),
          Row(
            children: const [
              kwidth10,
              Text(
                '322 likes',
                style: textwhitecolor,
              ),
            ],
          ),
          kheight10,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ReadMoreText(
              'qwertyuiopasdfghjklzxcvbnm,qwertyuioasdfghjklzxcvbnmqwertyuiopasdfghjklcvbnmqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq',
              style: textwhitecolor,
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'more',
              trimExpandedText: 'less',
              moreStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: colorWhith,
              ),
              lessStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: colorWhith,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
