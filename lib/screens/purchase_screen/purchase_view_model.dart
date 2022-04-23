import 'package:flutter/material.dart';

import 'purchase.dart';

abstract class PurchaseViewModel extends State<Purchase> {
  int quantityPlants = 1;

  int vasePlantSelected = 1;

  bool plantFavorited = false;

  @override
  void initState() {
    quantityPlants = 1;
    plantFavorited = false;
    super.initState();
  }

  void subtractQuantity() {
    if (quantityPlants == 1) {
      return;
    }
    setState(() {
      quantityPlants -= 1;
    });
  }

  void addQuantity() {
    setState(() {
      quantityPlants += 1;
    });
  }

  void selectVase(int newVase) {
    setState(() {
      vasePlantSelected = newVase;
    });
  }
}
