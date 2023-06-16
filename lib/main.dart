import 'package:flutter/material.dart';
import 'package:tinder/page/home.dart';
void main(){
  return runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: homePage(),
    );
  }

}
