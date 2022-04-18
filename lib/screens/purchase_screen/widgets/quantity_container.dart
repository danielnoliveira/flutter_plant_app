import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityContainer extends StatelessWidget {
  final VoidCallback subtractQuantity;
  final VoidCallback addQuantity;
  final int quantityPlants;
  const QuantityContainer({
    Key key,
    @required this.subtractQuantity,
    @required this.addQuantity,
    @required this.quantityPlants,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 110,
      height: 42,
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(222, 222, 222, 1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: subtractQuantity,
            child: Opacity(
              opacity: quantityPlants == 1 ? 0.25 : 1,
              child: Icon(
                Entypo.minus,
                size: 20,
              ),
            ),
          ),
          Text('${quantityPlants}',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              )),
          GestureDetector(
            onTap: addQuantity,
            child: Icon(
              Entypo.plus,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
