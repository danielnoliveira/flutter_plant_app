import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/mocks/plants_list.dart';
import 'package:plant_shop/models/plant.dart';
import 'package:plant_shop/screens/main_screen/widgets/tabs_container.dart';

import 'main_view_model.dart';
import 'widgets/header_bar.dart';
import 'widgets/plant_price.dart';
import 'widgets/tab_button.dart';

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
          children: [
            const HeaderBar(),
            TabsContainer(
              newButtonKey: newButtonKey,
              popularButtonKey: popularButtonKey,
              tagSelected: tagSelected,
              updateTagSelected: updateTagSelected,
              yPositionGreenBar: yPositionGreenBar,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28)
                  .copyWith(bottom: 33)
                  .copyWith(top: height * 0.075),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('filter pressionado');
                    },
                    child: SvgPicture.asset('assets/icons/filter_icon.svg'),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...plants_list.map((Plant plant) {
                    var cardHeight = height * 0.46628571428;
                    var cardWidth = width * 0.696;
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed('purchase', arguments: plant);
                      },
                      child: Hero(
                        tag: plant.name,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          width: cardWidth,
                          height: cardHeight,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(plant.image), scale: 1.2),
                            color: Color.fromRGBO(241, 244, 255, 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                        horizontal: cardWidth * 0.11877394636)
                                    .copyWith(top: cardHeight * 0.09803921568),
                                child: Text(
                                  plant.name,
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 21,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                        horizontal: cardWidth * 0.11877394636)
                                    .copyWith(top: 7),
                                child: Text(
                                  'W ${plant.width.toStringAsFixed(0)} x H ${plant.height.toStringAsFixed(0)} MM',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Color.fromRGBO(115, 115, 115, 1),
                                    height: 1.6,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 17,
                                        left: cardWidth * 0.11877394636),
                                    child: PlantPrice(price: plant.price),
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    padding: const EdgeInsets.all(0.0),
                                    child: Ink(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color.fromRGBO(29, 161, 84, 1),
                                            Color.fromRGBO(40, 202, 107, 1),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30)),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(26),
                                        constraints: const BoxConstraints(
                                            minWidth: 88.0,
                                            minHeight:
                                                36.0), // min sizes for Material buttons
                                        alignment: Alignment.center,
                                        child: const Text(
                                          '+',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
