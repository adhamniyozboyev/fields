import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double slider = 0.2;
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Slider(
          label:'$slider',
          max: 90,
          divisions: 3,
            value: slider,
            onChanged: (val) {
              setState(() {
                slider = val;
              });
            }),
      ]),
    );
  }
}
