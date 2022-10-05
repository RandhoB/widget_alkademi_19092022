import 'package:alkademi_widget/page/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, 'Halaman 2');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Page 2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Page3(),
                  ));
                },
                child: Container(
                  height: 40,
                  width: 80,
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    'Navigation to page 3',
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context, 'halaman 2');
                },
                child: Container(
                  height: 40,
                  width: 80,
                  color: Colors.yellow,
                  child: Center(
                      child: Text(
                    'Back to page 1',
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
