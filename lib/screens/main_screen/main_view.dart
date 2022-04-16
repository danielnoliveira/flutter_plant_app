import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main_view_model.dart';
import 'widgets/header_bar.dart';

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
          children: [const HeaderBar()],
        ),
      ),
    );
  }
}
