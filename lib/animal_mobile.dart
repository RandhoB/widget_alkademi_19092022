import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class latihan4 extends StatefulWidget {
  const latihan4({super.key});

  @override
  State<latihan4> createState() => _latihan4State();
}

class _latihan4State extends State<latihan4> {
  int _selectedIndex = 0;
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> imgAssets = [
    'assets/gunungku.jpg',
    "assets/gunungku.jpg",
    "assets/gunungku.jpg",
    "assets/gunungku.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Anderson',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Have a nice day',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff858585),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  autoPlay: true,
                ),
                items: imgAssets
                    .map((item) => Container(
                          child: Center(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(item,
                                fit: BoxFit.cover, width: 1000),
                          )),
                        ))
                    .toList(),
              )),
              // Container(
              //   width: double.infinity,
              //   height: 130,
              //   decoration: BoxDecoration(
              //     color: Colors.amber,
              //     borderRadius: BorderRadius.circular(23),
              //   ),
              // ),
              SizedBox(
                height: 23,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended Article',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xffBEDE61),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  recommended_Widget(),
                  recommended_Widget(),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended Article',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xffBEDE61),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Color(0xff363636),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/gunungku.jpg',
                        width: 132,
                        height: 90,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'More animal species are\ngetting COVID-19 for the first\ntime',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 9,
                                height: 6,
                                child: Image.asset('assets/simbol1.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Read',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}

class recommended_Widget extends StatelessWidget {
  const recommended_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.37,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xff363636),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/gunungku.jpg',
              width: double.infinity,
              height: 130,
            ),
            Text(
              'The 12 most intriguing\nanimal discoveries of 2021',
              style: TextStyle(
                fontSize: 8,
                color: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 9,
                  height: 6,
                  child: Image.asset('assets/simbol1.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Read',
                  style: TextStyle(
                    fontSize: 8,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
