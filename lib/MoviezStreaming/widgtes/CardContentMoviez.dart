import 'package:flutter/material.dart';

class CardContentMoviez extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final List<Icon> icons;
  const CardContentMoviez(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
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
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
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
                subTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff0D0846),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(children: icons),
              )
            ],
          )
        ],
      ),
    );
  }
}
