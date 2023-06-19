import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyField(),
  ));
}

class MyField extends StatefulWidget {
  const MyField({super.key});

  @override
  State<MyField> createState() => _MyFieldState();
}

class _MyFieldState extends State<MyField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9 ,a-z]'))],
          )
        ],
      ),
    );
  }
}
