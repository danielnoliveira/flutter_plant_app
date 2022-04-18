import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/models/plant.dart';
import 'package:plant_shop/screens/purchase_screen/widgets/plant_price.dart';
import 'package:plant_shop/screens/purchase_screen/widgets/quantity_container.dart';

import 'purchase_view_model.dart';
import 'widgets/header_plant_info.dart';
import 'widgets/vase.dart';

class PurchaseView extends PurchaseViewModel {
  @override
  Widget build(BuildContext context) {
    Plant plantSelected = ModalRoute.of(context)?.settings.arguments as Plant;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 244, 251, 1),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 56,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 32,
                      ),
                    ),
                  ),
                  Hero(
                      tag: plantSelected.name,
                      child: Image.asset(
                        plantSelected.image,
                        width: (width - 170),
                        fit: BoxFit.fitWidth,
                      )),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                      elevation: MaterialStateProperty.all(0.0),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(15.5)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      print('favoritado');
                    },
                    child: const Icon(
                      Icons.favorite,
                      color: const Color.fromRGBO(32, 178, 93, 1),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: const Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderPlantInfo(plantSelected: plantSelected),
                      QuantityContainer(
                        subtractQuantity: subtractQuantity,
                        addQuantity: addQuantity,
                        quantityPlants: quantityPlants,
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select pot'.toUpperCase(),
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                              height: 2,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Vase(
                                index: 1,
                                selectVase: selectVase,
                                vaseSelected: vasePlantSelected,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Vase(
                                index: 2,
                                selectVase: selectVase,
                                vaseSelected: vasePlantSelected,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Vase(
                                index: 3,
                                selectVase: selectVase,
                                vaseSelected: vasePlantSelected,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
