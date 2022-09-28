import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class latihan5 extends StatefulWidget {
  const latihan5({super.key});

  @override
  State<latihan5> createState() => _latihan5State();
}

class _latihan5State extends State<latihan5> {
  Color _worldColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/bg.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _worldColor = Colors.grey;
                    });
                  },
                  child: Text(
                    'World!',
                    style: TextStyle(
                      color: _worldColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: (() {
                        setState(() {
                          _worldColor = Colors.red;
                        });
                      }),
                      child: Text('Merah'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),
                      onPressed: (() {
                        setState(() {
                          _worldColor = Colors.yellow;
                        });
                      }),
                      child: Text('Kuning'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (() {
                        setState(() {
                          _worldColor = Colors.blue;
                        });
                      }),
                      child: Text('Biru'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
