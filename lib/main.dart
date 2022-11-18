import 'package:flutter/material.dart';

import 'package:slicing_ui/slicing/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeSlicing(),
    );
  }
}

// class Screen1 extends StatefulWidget {
//   Screen1({Key? key}) : super(key: key);

//   @override
//   State<Screen1> createState() => _Screen1State();
// }

// class _Screen1State extends State<Screen1> {
//   bool isRed = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onTap: () {
//           setState(() {
//             isRed = !isRed;
//           });
//         },
//         child: Center(
//             child: Container(
//           width: 100,
//           height: 100,
//           color: isRed ? Colors.blue : Colors.red,
//         )),
//       ),
//     );
//   }
// }
