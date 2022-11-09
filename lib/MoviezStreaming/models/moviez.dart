import 'package:flutter/material.dart';

class ListMoviez {
  String title;
  String subTitile;
  String img;
  List<Icon> icons;

  ListMoviez(
      {required this.title,
      required this.subTitile,
      required this.img,
      required this.icons});
}

var listMovies = [
  ListMoviez(
    title: 'Jhon Wick 4',
    subTitile: 'Action, Crime',
    img: 'assets/img/image3.png',
    icons: [
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    ],
  ),
  ListMoviez(
    title: 'Beauty & Beast',
    subTitile: 'Sci-Fiction',
    img: 'assets/img/cover.png',
    icons: [
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star_border,
        color: Colors.yellow,
      ),
    ],
  ),
  ListMoviez(
    title: 'The Dark II',
    subTitile: 'Horror',
    img: 'assets/img/cover1.png',
    icons: [
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      const Icon(
        Icons.star_border,
        color: Colors.yellow,
      ),
    ],
  )
];
