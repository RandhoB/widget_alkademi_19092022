import 'package:alkademi_widget/animal_mobile(242022).dart';
import 'package:alkademi_widget/latihan_widget2.dart';
import 'package:alkademi_widget/rent_car_widget.dart';
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
      home: latihan4(),
    );
  }
}
