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
  bool _showPassword = false;
  Icon icon = Icon(Icons.visibility);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextFormField(
            obscureText: !this._showPassword,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.security),
                suffixIcon: IconButton(
                    color: _showPassword ? Colors.blue : Colors.grey,
                    onPressed: () {
                      _showPassword
                          ? icon = Icon(Icons.visibility)
                          : icon = Icon(Icons.visibility_off);
                      setState(() {
                        this._showPassword = !this._showPassword;
                      });
                    },
                    icon: icon),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9 ,a-z]'))
            ],
          )
        ],
      ),
    );
  }
}
