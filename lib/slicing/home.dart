import 'package:flutter/material.dart';
import 'package:slicing_ui/slicing/theme.dart';

class HomeSlicing extends StatefulWidget {
  const HomeSlicing({Key? key}) : super(key: key);

  @override
  State<HomeSlicing> createState() => _HomeSlicingState();
}

class _HomeSlicingState extends State<HomeSlicing> {
  TextEditingController passwoordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  bool isEye = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1E1E),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: Color(0xffB5B3BC),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Create Personal Account',
                  style: text.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffB5B3BC),
                  ),
                ),
                SizedBox(
                  height: 31,
                ),
                Row(
                  children: [
                    Container(
                      height: 34,
                      child: Text(
                        'Email',
                        style: text.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xff6F6F6F,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 34,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xff02C3BD), width: 3))),
                      child: Text(
                        'Phone Number',
                        style: text.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xffFFFFFF,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: text.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xffB5B3BC,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffF2F0FF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        child: TextFormField(
                          style: text.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffB5B3BC)),
                          controller: usernameController,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Username',
                              hintStyle: text.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  0xff6F6F6F,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone Number',
                        style: text.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xffB5B3BC,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffF2F0FF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: Image.asset(
                                    'assets/img/Vector.png',
                                    width: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '+62 |',
                              style: text.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffB5B3BC),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                style: text.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffB5B3BC)),
                                controller: phoneNumberController,
                                decoration: InputDecoration.collapsed(
                                  hintText: '',
                                  hintStyle: text.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(
                                      0xff6F6F6F,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Password',
                              style: text.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(
                                  0xffB5B3BC,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffF2F0FF),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      obscureText: isEye,
                                      style: text.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffB5B3BC)),
                                      controller: passwoordController,
                                      decoration: InputDecoration.collapsed(
                                          hintText: 'Password',
                                          hintStyle: text.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(
                                              0xff6F6F6F,
                                            ),
                                          )),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isEye = !isEye;
                                      });
                                    },
                                    child: (isEye)
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Color(0xffB5B3BC),
                                            size: 20,
                                          )
                                        : Icon(
                                            Icons.remove_red_eye,
                                            color: Color(0xffB5B3BC),
                                            size: 20,
                                          ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            'Referral ID (Optional)',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(
                                0xffB5B3BC,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                            color: Color(0xffB5B3BC),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 86,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Color(0xffB5B3BC),
                            size: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'I have read to Digicoins ',
                            style: text.copyWith(
                                color: Color(0xffB5B3BC),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Terms of Service ',
                            style: text.copyWith(
                                color: Color(0xff02C3BD),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'and ',
                            style: text.copyWith(
                                color: Color(0xffB5B3BC),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Privacy Police ',
                            style: text.copyWith(
                                color: Color(0xff02C3BD),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 54,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff02C3BD), Color(0xff4062BB)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: text.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF2F0FF)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an Account? ',
                                style: text.copyWith(
                                    color: Color(0xffB5B3BC),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Login',
                                style: text.copyWith(
                                    color: Color(0xff02C3BD),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
