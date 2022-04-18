import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantPrice extends StatelessWidget {
  final double price;
  const PlantPrice({
    Key key,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '\$',
          children: [
            TextSpan(
              text: price.toStringAsFixed(0),
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
            TextSpan(
              text: '.',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
            TextSpan(
              text: ((price - price.truncate()) * 100)
                  .toStringAsFixed(0)
                  .padLeft(2, '0'),
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ],
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 18,
            height: 1,
          )),
    );
  }
}
