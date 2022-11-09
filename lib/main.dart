import 'package:flutter/material.dart';
import 'package:slicing_ui/MoviezStreaming/home.dart';
import 'package:slicing_ui/latihanChart/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart();
  }
}
