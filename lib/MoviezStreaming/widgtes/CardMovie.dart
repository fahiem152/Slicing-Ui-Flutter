// ignore: file_names
import 'package:flutter/material.dart';
import 'package:slicing_ui/MoviezStreaming/models/moviez.dart';

class CardMoviez extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final List<Icon> icons;
  const CardMoviez({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.icons,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              20,
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff0D0846),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff929292),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
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
