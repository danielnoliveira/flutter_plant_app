import 'package:flutter/material.dart';
import 'package:plant_shop/screens/main_screen/main.dart';
import 'package:plant_shop/screens/purchase_screen/purchase.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant E-commerce App',
      debugShowCheckedModeBanner: false,
      initialRoute: "main",
      routes: {
        "main": (BuildContext context) => const Main(),
        "purchase": (BuildContext context) => const Purchase(),
      },
    );
  }
}
