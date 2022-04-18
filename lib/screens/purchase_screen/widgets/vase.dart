import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Vase extends StatelessWidget {
  final int index;
  final Function selectVase;
  final int vaseSelected;
  const Vase(
      {Key key,
      @required this.index,
      @required this.selectVase,
      @required this.vaseSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectVase(index),
      child: Stack(
        children: [
          Container(
            width: 76,
            height: 76,
            padding: EdgeInsets.all(0),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/vase_${index}.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          vaseSelected == index
              ? Container(
                  width: 76,
                  height: 76,
                  padding: EdgeInsets.all(0),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(32, 178, 93, 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              : SizedBox(),
          vaseSelected == index
              ? Positioned(
                  bottom: 5,
                  right: 5,
                  child: Icon(
                    FontAwesome.check,
                    color: Colors.white,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
