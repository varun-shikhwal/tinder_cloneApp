import 'package:flutter/material.dart';
Widget imageWidget(String image){
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover
      )
    ),
  );
}
