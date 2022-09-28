import 'package:alkademi_widget/models/shop_model.dart';
import 'package:alkademi_widget/widget/widget_shop.dart';
import 'package:flutter/material.dart';

class ShopingCart extends StatelessWidget {
  ShopingCart({Key? key}) : super(key: key);

  final List<String> items = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
    'item7',
    'item8',
    'item9',
  ];

  final List<int> prices = [
    10000,
    20000,
    3000,
    40000,
    5000,
    60000,
    7000,
    80000,
    9000,
  ];

  final List<String> pictures = [
    'assets/home.png',
    'assets/home.png',
    'assets/person.png',
    'assets/person.png',
    'assets/search.png',
    'assets/search.png',
    'assets/bell.png',
    'assets/bell.png',
    'assets/bell.png',
  ];

  final List<ModelShop> products = [
    ModelShop(
        id: '1', name: 'Rumah', price: 50000000, image: 'assets/home.png'),
    ModelShop(
        id: '2', name: 'Manusia', price: 000000000, image: 'assets/person.png'),
    ModelShop(
        id: '3', name: 'Lonceng', price: 250000, image: 'assets/bell.png'),
    ModelShop(
        id: '4', name: 'Mikroskop', price: 4000000, image: 'assets/search.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text('Shopping Cart Bagas'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white10,
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    products[index].image,
                    height: 25,
                    width: 30,
                  ),
                  title: Text(
                    products[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Rp. ${products[index].price}'),
                  // trailing: IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(
                  //     Icons.delete,
                  //   ),
                  // ),
                ),
                quantity(),
              ],
            ),
          );
        },
      ),
    );
  }
}
