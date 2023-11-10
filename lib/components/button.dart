import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  static const DARK = Color.fromRGBO(45, 45, 45, 1);
  static const DEFAULT = Color.fromRGBO(52, 49, 49, 1);
  static const OPERATION = Color.fromRGBO(45, 45, 45, 1);
  static const IGUAL = Color.fromRGBO(128, 0, 128, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.cb,
  });

  Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.cb,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb,
  });

  Button.igual({
    required this.text,
    this.big = false,
    this.color = IGUAL,
    required this.cb,
  });

  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
          ),
        onPressed: () => cb(text),
      ),
    );
  }

}