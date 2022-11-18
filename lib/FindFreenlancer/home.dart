import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui/FindFreenlancer/detail.dart';

class FindFreenlancerHome extends StatelessWidget {
  const FindFreenlancerHome({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controllerSearch = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(24),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Color(0xffC16F77),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: 250,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Color(0xffE6C5C9).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Color(0xffD9D9D9),
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _controllerSearch,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Search Freelancers, Project',
                                      hintStyle: GoogleFonts.lato(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xffD9D9D9),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Color(0xffE6C5C9).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(21),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/img/freenlancer/icon1.png',
                                width: 21,
                                color: Color(0xffD9D9D9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cari',
                                style: GoogleFonts.lato(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Freelancer',
                                style: GoogleFonts.lato(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 128,
                                child: Text(
                                  'Selesaikan pekerjaan dengan talenta terbaik di bidangnya',
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/img/freenlancer/gambar1.png',
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                  ),
                  padding: EdgeInsets.all(24),
                  width: MediaQuery.of(context).size.width,
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
                        'Paling Banyak Dicari',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            JobCard(
                              job: 'Programmer',
                              allJob: '256',
                              url: 'assets/img/freenlancer/job1.png',
                            ),
                            JobCard(
                              job: 'UI/UX Designer',
                              allJob: '120',
                              url: 'assets/img/freenlancer/job2.png',
                            ),
                            JobCard(
                              job: 'Sosmed Admin',
                              allJob: '67',
                              url: 'assets/img/freenlancer/job3.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Freelancer',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Lihat Semua',
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffAF4A53),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Column(
                        children: [
                          HumanCard(
                            nama: 'Andrea Hutama Karya',
                            job: 'Programmer',
                            rating: ' 4.9',
                            lokasi: 'Bandung',
                            bayaran: '55',
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailFindFreelancer(),
                                ),
                              );
                            },
                            child: HumanCard(
                              nama: 'Ahmad Muhammad Fahiem',
                              job: 'Mobile Flutter',
                              rating: ' 5.0',
                              lokasi: 'Demak',
                              bayaran: '100',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({required this.job, required this.allJob, required this.url});

  final String job;
  final String allJob;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 100,
            width: 145,
            decoration: BoxDecoration(
              color: Color(0xffECC2B9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              url,
              // 'assets/img/freenlancer/job1.png',
              width: 144,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            job,
            // 'Programmer',
            style: GoogleFonts.lato(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            allJob + " " + job,
            style: GoogleFonts.lato(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class HumanCard extends StatelessWidget {
  const HumanCard({
    required this.nama,
    required this.job,
    required this.rating,
    required this.lokasi,
    required this.bayaran,
  });
  final String nama;
  final String job;
  final String rating;
  final String lokasi;
  final String bayaran;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(
                0xffECC2B9,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset('assets/img/freenlancer/human1.png'),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                job,
                style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFC909),
                            size: 10,
                          ),
                          Text(
                            rating,
                            style: GoogleFonts.lato(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 10,
                          ),
                          Text(
                            lokasi,
                            style: GoogleFonts.lato(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${bayaran}/',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'hr',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Color(0xffAF4A53),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'HIRE  ME',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 90,
                    height: 28,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffAF4A53)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'PROFILE',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffAF4A53),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
