import 'package:flutter/material.dart';
import 'package:slicing_ui/MoviezStreaming/home.dart';
// ignore_for_file: prefer_const_constructors

class SearchMoviezStreaming extends StatelessWidget {
  const SearchMoviezStreaming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.all(
                  30,
                ),
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: TextFormField(
                          //style: primaryTextstyle,
                          //controller: nameController,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Search Movie',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(
                                  0xff0D0846,
                                ),
                              )
                              // hintStyle: subtitleTextStyle,
                              ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Search Result (3)',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(
                        0xff0D0846,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 127,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/img/cover1.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Dark II',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Horror',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 127,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/img/cover2.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Dark Knight',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Heroes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
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
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 127,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/img/cover3.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Dark Tower',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Action',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
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
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 127,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/img/image3.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Wick 4',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Action, Crime',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff0D0846),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
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
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeMoviezStreaming();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 220,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(
                        0xff0D0846,
                      ),
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: Center(
                      child: Text(
                        'Suggest Movie',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
