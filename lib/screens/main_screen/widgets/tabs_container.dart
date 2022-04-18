import 'package:flutter/material.dart';

import 'tab_button.dart';

class TabsContainer extends StatelessWidget {
  final Function updateTagSelected;
  final String tagSelected;
  final GlobalKey popularButtonKey;
  final GlobalKey newButtonKey;
  final double yPositionGreenBar;
  const TabsContainer(
      {Key key,
      this.updateTagSelected,
      this.tagSelected,
      this.popularButtonKey,
      this.newButtonKey,
      this.yPositionGreenBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Row(
            children: [
              TabButton(
                tabTitle: 'Concept',
                tabSelected: tagSelected,
                updateTagSelected: updateTagSelected,
              ),
              const Spacer(),
              TabButton(
                key: popularButtonKey,
                tabTitle: 'Popular',
                tabSelected: tagSelected,
                updateTagSelected: updateTagSelected,
              ),
              const Spacer(),
              TabButton(
                key: newButtonKey,
                tabTitle: 'New',
                tabSelected: tagSelected,
                updateTagSelected: updateTagSelected,
              ),
              const Spacer(),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          bottom: -5,
          left: yPositionGreenBar + 2,
          child: Container(
            color: const Color.fromRGBO(29, 161, 84, 1),
            width: 19,
            height: 3,
          ),
        ),
      ],
    );
  }
}
