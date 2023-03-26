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
            return Column(
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
              ],
            );
          },
        ),
      ),
    );
  }
}
