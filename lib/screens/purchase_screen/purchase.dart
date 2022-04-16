import 'package:flutter/material.dart';
import 'purchase_view.dart';
import 'purchase_view_model.dart';

class Purchase extends StatefulWidget {
  const Purchase({Key key}) : super(key: key);

  @override
  PurchaseViewModel createState() => PurchaseView();
}
