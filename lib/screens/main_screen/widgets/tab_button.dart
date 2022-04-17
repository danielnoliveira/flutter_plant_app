import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabButton extends StatelessWidget {
  final String tabTitle;
  final String tabSelected;
  final Function updateTagSelected;
  const TabButton({
    Key key,
    @required this.tabSelected,
    @required this.tabTitle,
    @required this.updateTagSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        updateTagSelected(tabTitle);
      },
      child: Text(
        tabTitle,
        style: GoogleFonts.lato(
          fontSize: 17,
          height: 1.2,
          color: tabSelected == tabTitle
              ? Colors.black
              : Color.fromRGBO(210, 210, 210, 1),
          fontWeight:
              tabSelected == tabTitle ? FontWeight.w900 : FontWeight.w800,
        ),
      ),
    );
  }
}
