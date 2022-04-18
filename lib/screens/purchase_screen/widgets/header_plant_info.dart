import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/models/plant.dart';
import 'package:plant_shop/screens/purchase_screen/widgets/plant_price.dart';

class HeaderPlantInfo extends StatelessWidget {
  const HeaderPlantInfo({
    Key key,
    @required this.plantSelected,
  }) : super(key: key);

  final Plant plantSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            plantSelected.name,
            style: GoogleFonts.lato(
              fontSize: 24,
              height: 1.25,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          PlantPrice(price: plantSelected.price),
        ],
      ),
    );
  }
}
