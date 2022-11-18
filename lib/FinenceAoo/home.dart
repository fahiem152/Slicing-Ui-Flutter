import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui/FinenceAoo/detail.dart';

class FinanceAppHome extends StatelessWidget {
  const FinanceAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF6F9FF),
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.density_medium,
                    size: 31,
                    color: Color(0xff525357),
                  ),
                  Text(
                    'My Cards',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff525355),
                    ),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: 28,
                    color: Color(0xff5273E7),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCard(
                    color1: Color(0xffF986CE),
                    color2: Color(0xffFE45EB),
                  ),
                  CustomCard(
                    color1: Color(0xff006FF8),
                    color2: Color(0xff3E94FF),
                  ),
                  CustomCard(
                    color1: Color(0xff6170FF),
                    color2: Color(0xff3590FF),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Center(
              child: Container(
                width: 52,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(
                          0xffE2E2E2,
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(
                          0xff1C80FB,
                        ),
                      ),
                    ),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(
                          0xffE2E2E2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Overview',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff222933),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          // clipBehavior: Clip.antiAlias,
                          padding: EdgeInsets.only(
                            left: 24,
                            top: 20,
                            bottom: 24,
                          ),
                          // margin: EdgeInsets.only(right: 16),
                          width: 188,
                          height: 91,
                          decoration: BoxDecoration(
                            color: Color(0xff11C7A6),
                            borderRadius: BorderRadius.circular(
                              14,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Income',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '+ \$ 4,500.00',
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -125,
                          right: -125,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 24,
                      top: 20,
                      bottom: 24,
                    ),
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                    width: 188,
                    height: 91,
                    decoration: BoxDecoration(
                      color: Color(
                        0xff4A76E8,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Spending',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '- \$ 2,500.00',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'Transaction List',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff222933),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Today',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff222933),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailFinanceApp(),
                  ),
                );
              },
              child: ShareCatd(
                color: Color(0xffFEF8EA),
                url: 'assets/img/financeapp/gambar1.png',
                name: 'Walmart',
                date: 'Purchase | 18 Jul 2020',
                price: '99',
              ),
            ),
            ShareCatd(
              color: Color(0xffEAEAEA),
              url: 'assets/img/financeapp/gambar2.png',
              name: 'Apple Store',
              date: 'Purchase | 18 Jul 2020',
              price: '199',
            ),
            ShareCatd(
              color: Color(0xffF2FBFA),
              url: 'assets/img/financeapp/gambar3.png',
              name: 'Starbucks',
              date: 'Purchase | 18 Jul 2020',
              price: '10',
            )
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color color1;
  final Color color2;
  CustomCard({required this.color1, required this.color2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      padding: EdgeInsets.all(20),
      width: 300,
      height: 175,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 1.8,
            offset: Offset(1, 1),
          )
        ],
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 41,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(
                    7,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/img/financeapp/icon1.png',
                    color: Colors.white,
                    width: 20,
                    height: 14,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 33,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 12,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mastercard',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 49,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 49,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 49,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '1397',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ 5,700.00',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text(
                '05/20',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.78),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ShareCatd extends StatelessWidget {
  final String url;
  final String name;
  final String date;
  final String price;
  final Color color;
  ShareCatd({
    required this.url,
    required this.name,
    required this.date,
    required this.price,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(17),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: 63,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Image.asset(
                  url,
                  width: 39,
                  height: 42,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff181818),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    date,
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB3B3B3),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '-\$' + price,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff0C053A),
            ),
          ),
        ],
      ),
    );
  }
}
