import 'package:alkademi_widget/page/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var index = 0;
  String page = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Saya dipanggil lagi sebanyak $index'),
            InkWell(
              onTap: () async {
                final data = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page2(),
                ));
                setState(() {
                  index++;
                  if (data != null) {
                    page = data;
                  } else {
                    page = '';
                  }
                });
              },
              child: Container(
                height: 40,
                width: 80,
                color: Colors.yellow,
                child: Center(
                    child: Text(
                  'Navigation to page 2',
                  textAlign: TextAlign.center,
                )),
              ),
            ),
            Visibility(
              visible: page.isNotEmpty,
              child: Text('Saya kembali dari $page'),
            )
          ],
        ),
      ),
    );
  }
}
