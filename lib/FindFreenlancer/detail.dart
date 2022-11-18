import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailFindFreelancer extends StatelessWidget {
  const DetailFindFreelancer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(
                24,
              ),
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Color(0xffAF4A53).withOpacity(0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xffAF4A53),
                      size: 32,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.075,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/img/freenlancer/human2.png',
                          width: 113,
                          height: 130,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muhammad Fahiem',
                                style: GoogleFonts.lato(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffAF4A53),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Mobile Flutter',
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: Color(0xffAF4A53),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  Text(
                                    'Demak',
                                    style: GoogleFonts.lato(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 90,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: Color(0xffAF4A53),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    'HIRE ME',
                                    style: GoogleFonts.lato(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 24,
                left: 24,
                right: 24,
              ),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.45,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'From humble startups to software used by billions, I’ve had a blast designing things that people love. At Google, I\'m proudly building the future of Chrome alongside some of the industry\'s greatest innovators.',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Skills',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Dart, Flutter, JavaScript, Express JS, Vue, HTML, CSS, MYSQL',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 109,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xffECC2B9),
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Portofolio',
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffAF4A53),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 87,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffECC2B9)),
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Clients',
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffAF4A53),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 87,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffECC2B9)),
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Review',
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffAF4A53),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Image.asset('assets/img/freenlancer/portofolio.png')
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
