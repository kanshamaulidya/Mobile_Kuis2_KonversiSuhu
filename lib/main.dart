import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  String selectedValue = 'Reamur';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Celcius',
                      hintText: 'Masukkan angka temperatur dalam celcius',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButton(
                    isExpanded: true,
                    value: selectedValue,
                    items: [
                      DropdownMenuItem(
                        child: Text('Reamur'),
                        value: 'Reamur',
                      ),
                      DropdownMenuItem(
                        child: Text('Kelvin'),
                        value: 'Kelvin',
                      ),
                      DropdownMenuItem(
                        child: Text('Fahrenheit'),
                        value: 'Fahrenheit',
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value.toString();
                      });
                    },
                  ),
                  Text('Hasil'),
                  Text('365'),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Konversi Suhu'))),
                    ],
                  )
                ],
              ))),
    );
  }
}
