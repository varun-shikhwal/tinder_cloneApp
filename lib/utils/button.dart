import 'package:flutter/material.dart';
Widget buttonWidget(IconData icon, Color color){
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(color: color)
    ),
    child: Icon(
      icon,
      color: color,
      size: 30,
    ),
  );
}
