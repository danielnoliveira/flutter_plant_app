import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var paddingAppBar = 26.0;
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.075,
        left: paddingAppBar,
        right: paddingAppBar,
        bottom: height * 0.079,
      ),
      child: Row(
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              print('menu pressionado');
            },
            icon: SvgPicture.asset('assets/icons/menu_icon.svg'),
          ),
          Spacer(),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              print('basket pressionado');
            },
            icon: SvgPicture.asset('assets/icons/basket_icon.svg'),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              print('search pressionado');
            },
            icon: SvgPicture.asset('assets/icons/search_icon.svg'),
          )
        ],
      ),
    );
  }
}
