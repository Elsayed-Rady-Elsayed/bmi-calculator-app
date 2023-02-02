import 'package:flutter/material.dart';

Widget materialbuttom({
  required String text,
  double height = 50,
  required var press,
  double width = double.infinity,
  Color color = Colors.blue,
}){
  return MaterialButton(
    color: color,
    height: height,
    minWidth: width,
    onPressed: press,
    child: Text(text.toUpperCase()),);
}