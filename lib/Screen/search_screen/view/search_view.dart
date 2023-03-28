import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/search_screen/controller/search_controller.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: Consumer<SearchController>(
          builder: (context, value, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CupertinoSearchTextField(
                      prefixInsets:
                          const EdgeInsetsDirectional.fromSTEB(10, 4, 5, 3),
                      backgroundColor: const Color.fromARGB(82, 158, 158, 158),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: colorWhith,
                      ),
                      placeholderStyle: textwhitecolor,
                      controller: value.searchcontroller,
                    ),
                  ),
                  GridView.custom(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      pattern: [
                        const QuiltedGridTile(4, 2),
                        const QuiltedGridTile(1, 2),
                        const QuiltedGridTile(1, 2),
                        const QuiltedGridTile(1, 2),
                        const QuiltedGridTile(1, 2)
                      ],
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                      childCount: 20,
                      (context, index) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://picsum.photos/id/18/500/500?random=$index'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
