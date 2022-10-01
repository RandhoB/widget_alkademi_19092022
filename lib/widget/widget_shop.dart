import 'package:flutter/material.dart';

class quantity extends StatefulWidget {
  quantity({Key? key}) : super(key: key);

  @override
  State<quantity> createState() => _quantityState();
}

class _quantityState extends State<quantity> {
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (_quantity > 1) {
                _quantity = 1;
              }
            });
          },
          icon: Icon(Icons.delete),
        ),
        IconButton(
          onPressed: (() {
            setState(() {
              if (_quantity > 1) {
                _quantity--;
              }
            });
          }),
          icon: Icon(Icons.remove),
        ),
        Text('$_quantity'),
        IconButton(
          onPressed: (() {
            setState(() {
              _quantity++;
            });
          }),
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
