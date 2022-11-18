import 'package:flutter/material.dart';

class Table1 extends StatelessWidget {
  const Table1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tables")),
      body: Container(
        width: 550,
        height: 540,
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.grey,
          width: 1,
        )),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
              // border: TableBorder(horizontalInside: BorderSide.none),
              columns: <DataColumn>[
                DataColumn(
                    label: Expanded(
                  child: Text(
                    "No",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Text(
                    "Bulan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Text(
                    "Tgl",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Text(
                    "Jumlah",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Text(
                    "Keterangan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
              ], rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('Januari')),
              DataCell(Text('01')),
              DataCell(Text('Rp 150.000')),
              DataCell(Text(
                "Lunas",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF13A89E)),
              )),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('Januari')),
              DataCell(Text('01')),
              DataCell(Text('Rp 150.000')),
              DataCell(Text(
                "Lunas",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF13A89E)),
              )),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('Januari')),
              DataCell(Text('01')),
              DataCell(Text('Rp 150.000')),
              DataCell(Text(
                "Lunas",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF13A89E)),
              )),
            ]),
          ]),
        ),
      ),
    );
  }
}
