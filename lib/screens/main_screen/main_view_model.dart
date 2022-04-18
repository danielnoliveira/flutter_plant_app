import 'package:flutter/material.dart';

import 'main.dart';

abstract class MainViewModel extends State<Main> {
  String tagSelected = 'Concept';

  GlobalKey popularButtonKey = GlobalKey();
  GlobalKey newButtonKey = GlobalKey();

  double yPositionGreenBar = 26.0;

  void updateTagSelected(String newValue) {
    setState(() {
      tagSelected = newValue;
      if (newValue == 'Concept') {
        yPositionGreenBar = 26.0;
      } else if (newValue == 'Popular') {
        RenderBox rb =
            popularButtonKey.currentContext.findRenderObject() as RenderBox;
        yPositionGreenBar = rb.localToGlobal(Offset.zero).dx;
      } else if (newValue == 'New') {
        RenderBox rb =
            newButtonKey.currentContext.findRenderObject() as RenderBox;
        yPositionGreenBar = rb.localToGlobal(Offset.zero).dx;
      }
    });
  }
}
