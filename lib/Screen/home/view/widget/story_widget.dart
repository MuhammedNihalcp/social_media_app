import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

import '../../../../core/const_color.dart';
import '../../../../core/const_style.dart';

class HomeStoryWidget extends StatelessWidget {
  const HomeStoryWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: height * 0.14,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  DashedCircle(
                    color: authbuttoncolor,
                    dashes: 10,
                    child: const CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  kheight10,
                  const Text(
                    'Nihal',
                    style: TextStyle(
                      color: colorWhith,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
