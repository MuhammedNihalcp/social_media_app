import 'package:flutter/material.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
    );
  }
}
