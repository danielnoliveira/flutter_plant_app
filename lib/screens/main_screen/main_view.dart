import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_view_model.dart';
import 'widgets/header_bar.dart';
import 'widgets/tab_button.dart';

class MainView extends MainViewModel {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var paddingAppBar = 26.0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderBar(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                    children: [
                      TabButton(
                        key: conceptButtonKey,
                        tabTitle: 'Concept',
                        tabSelected: tagSelected,
                        updateTagSelected: updateTagSelected,
                      ),
                      Spacer(),
                      TabButton(
                        key: popularButtonKey,
                        tabTitle: 'Popular',
                        tabSelected: tagSelected,
                        updateTagSelected: updateTagSelected,
                      ),
                      Spacer(),
                      TabButton(
                        key: newButtonKey,
                        tabTitle: 'New',
                        tabSelected: tagSelected,
                        updateTagSelected: updateTagSelected,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  bottom: -5,
                  left: yPositionGreenBar + 2,
                  child: Container(
                    color: Color.fromRGBO(29, 161, 84, 1),
                    width: 19,
                    height: 3,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28)
                  .copyWith(top: height * 0.075),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('filter pressionado');
                    },
                    child: SvgPicture.asset('assets/icons/filter_icon.svg'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
