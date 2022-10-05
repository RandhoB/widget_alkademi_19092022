import 'package:alkademi_widget/animal_mobile(24092022).dart';
import 'package:alkademi_widget/latihan05102022.dart';
import 'package:alkademi_widget/latihan_widget(27092022).dart';
import 'package:alkademi_widget/latihan_widget2.dart';
import 'package:alkademi_widget/rent_car_widget.dart';
import 'package:alkademi_widget/shoping_cart(27092022).dart';
import 'package:flutter/material.dart';

import 'latihan_widget.dart';

void main() {
  runApp(const latihanku());
}

class latihanku extends StatelessWidget {
  const latihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // primaryColor: Colors.amber,
      ),
      home: Page1(),
    );
  }
}
