import 'package:flutter/material.dart';
import 'package:slicing_ui/latihanChart/model/model_data.dart';

class BarData {
  static int interval = 5;

  static List<Data> barData = [
    Data(id: 0, nama: 'Sund', y: 15, color: Colors.red),
    Data(id: 1, nama: 'Mon', y: -12, color: Colors.blue),
    Data(id: 2, nama: 'Tue', y: 3, color: Colors.blue),
    Data(id: 3, nama: 'Wed', y: -7, color: Colors.amber),
    Data(id: 4, nama: 'Thu', y: 12, color: Colors.blue),
    Data(id: 5, nama: 'Fri', y: 9, color: Colors.green),
    Data(id: 6, nama: 'Sat', y: -10, color: Colors.orange)
  ];
}
