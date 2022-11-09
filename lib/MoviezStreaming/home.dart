import 'package:flutter/material.dart';
import 'package:slicing_ui/MoviezStreaming/widgtes/CardContentMoviez.dart';
import 'package:slicing_ui/MoviezStreaming/widgtes/CardMovie.dart';
// ignore_for_file: prefer_const_constructors

class HomeMoviezStreaming extends StatelessWidget {
  const HomeMoviezStreaming({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFBFBFD),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(
              30,
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Moviez',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(
                            0xff0D0846,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Watch much easier',
                        style: TextStyle(
                          color: Color(
                            0xff929292,
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.search,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardMoviez(
                      title: 'John Wick 4',
                      subTitle: 'Action, Crime',
                      image: 'assets/img/image3.png',
                      icons: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                      ],
                    ),
                    CardMoviez(
                      title: 'Beauty & Beast',
                      subTitle: 'Sci-Fiction',
                      image: 'assets/img/image3.png',
                      icons: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xffFFAB2E),
                        ),
                      ],
                    ),
                    CardMoviez(
                      title: 'Mulan Session',
                      subTitle: 'History War',
                      image: 'assets/img/image3.png',
                      icons: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFAB2E),
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xffFFAB2E),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'From Disney',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xff0D0846,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CardContentMoviez(
                title: 'Mulan Session',
                subTitle: 'History War',
                image: 'assets/img/image3.png',
                icons: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color(0xffFFAB2E),
                  ),
                ],
              ),
              CardContentMoviez(
                title: 'Beauty & Beast',
                subTitle: 'Sci-Fiction',
                image: 'assets/img/image3.png',
                icons: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color(0xffFFAB2E),
                  ),
                ],
              ),
              CardContentMoviez(
                title: 'John Wick 4',
                subTitle: 'Action, Crime',
                image: 'assets/img/image3.png',
                icons: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFAB2E),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
