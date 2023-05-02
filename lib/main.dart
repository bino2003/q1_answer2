import 'package:flutter/material.dart';

import 'Home.dart';
import 'NotNullCart.dart';
import 'NullCart.dart';
import 'OrderConfirmation.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

PageController controller=PageController(initialPage:0 );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,

      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
