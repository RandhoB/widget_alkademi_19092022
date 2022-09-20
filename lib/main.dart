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
      home: home(),
    );
  }
}
