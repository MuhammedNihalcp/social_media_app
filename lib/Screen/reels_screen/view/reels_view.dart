import 'package:flutter/material.dart';
import 'package:social_media_app/Screen/reels_screen/view/widget/video_list_item.dart';
import 'package:social_media_app/core/const_color.dart';

class ScreenReels extends StatelessWidget {
  const ScreenReels({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoListItem(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
