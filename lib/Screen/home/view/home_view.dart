import 'dart:math';

import 'package:dashed_circle/dashed_circle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';
import 'package:social_media_app/Screen/home/view/widget/story_widget.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: authbackgroundColor,
      appBar: AppBar(
        title: Text(
          'Talky',
          style: apptittlestyle,
        ),
        backgroundColor: authbackgroundColor,
        elevation: 0,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              Transform.rotate(
                angle: -30 * pi / 180,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_rounded),
                ),
              )
            ],
          )
        ],
      ),
      body: Consumer<SignUPController>(
        builder: (context, value, child) => SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeStoryWidget(height: height),
                const Divider(
                  thickness: 1,
                  color: colorWhith,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Column(
                        children: [
                          ListTile(
                            leading: DashedCircle(
                              color: authbuttoncolor,
                              dashes: 2,
                              child: const CircleAvatar(),
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
                                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
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
                              'qwertyuiop[]asdfghjklzxcvbnm,qwertyuioasdfghjklzxcvbnmqwertyuiopasdfghjklcvbnmqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq',
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
                  },
                  separatorBuilder: (context, index) => kheight10,
                  itemCount: 10,
                ),
                kheight20
              ],
            ),
          ),
        ),
      ),
    );
  }
}
