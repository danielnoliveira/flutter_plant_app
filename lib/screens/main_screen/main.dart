import 'package:flutter/material.dart';
import 'package:plant_shop/screens/main_screen/main_view.dart';
import 'package:plant_shop/screens/main_screen/main_view_model.dart';

class Main extends StatefulWidget {
  const Main({Key key}) : super(key: key);

  @override
  MainViewModel createState() => MainView();
}
