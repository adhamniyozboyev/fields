import 'package:flutter/material.dart';
import 'dart:ui';

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
  double sigmaX = 0, sigmaY = 0;
  double rotZ = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ImageFiltered(
            child: Image.asset('images/friends.jpg'),
            imageFilter: ImageFilter.blur(
                sigmaX: sigmaX, sigmaY: sigmaY, tileMode: TileMode.mirror)),
        Row(children: [
          Text('SigmaX'),
          Slider(
              max: 20,
              value: sigmaX,
              onChanged: (val) {
                setState(() {
                  sigmaX = val;
                });
              }),
        ]),
        Row(
          children: [
            Text('SigmaY'),
            Slider(
                max: 20,
                value: sigmaY,
                onChanged: (val) {
                  setState(() {
                    sigmaY = val;
                  });
                })
          ],
        )
        // const Divider(),
        // ...controlWidgets()
      ]),
    );
  }
}
//   List<Widget> controlWidgets() {
//     return [
//       Row(children: [
//         Text('SigmaX'),
//         Slider(
//             max: 20,
//             value: sigmaX,
//             onChanged: (val) {
//               setState(() {
//                 sigmaX = val;
//               });
//             }),
//       ]),
//       Row(children: [
//         Text('SigmaY'),
//         Slider(
//             max: 20,
//             value: sigmaY,
//             onChanged: (val) {
//               setState(() {
//                 sigmaY = val;
//               });
//             })
//       ])
//     ];
//   }
// }
