import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;

  List<String> imgAssets = [
    'assets/gunungku.jpg',
    "assets/gunungku.jpg",
    "assets/gunungku.jpg",
    "assets/gunungku.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (i, r) {
                        setState(() {
                          _current = i;
                        });
                      },
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
                  ),
                ),
                // AnimatedSmoothIndicator(
                //   activeIndex: _current,
                //   count: imgAssets.length,
                //   effect: ExpandingDotsEffect(
                //       activeDotColor: Color.fromRGBO(0, 0, 0, 0.9),
                //       dotWidth: 8,
                //       dotHeight: 8),
                // ),
                DotsIndicator(
                  dotsCount: imgAssets.length,
                  position: _current.toDouble(),
                ),
              ],
            ),
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
