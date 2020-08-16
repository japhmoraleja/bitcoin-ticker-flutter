import 'package:flutter/material.dart';
import 'utils/price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark()
          .copyWith(primaryColor: Colors.lightBlue, scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
