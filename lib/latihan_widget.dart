import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo saya latihan'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: Text('Saya widget ditengah')),
          Container(
            height: 40,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(child: Text('saya kiri')),
              Center(child: Text('saya kanan')),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                height: 30,
                color: Colors.purple,
                child: Center(
                  child: Text('Saya berwarna'),
                ),
              ),
            ],
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.small(
      //   onPressed: (() {}),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 50,
            color: Colors.black,
            child: Center(
              child: Text(
                'Saya dibawah sendiri',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow,
            ),
            child: Icon(Icons.abc),
          ),
        ],
      ),
    );
  }
}
