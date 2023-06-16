import 'package:flutter/material.dart';
import 'package:tinder/utils/button.dart';
class bottomBar extends StatefulWidget {
  const bottomBar({super.key});

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // color: Colors.teal,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonWidget(Icons.refresh, Colors.amber),
          buttonWidget(Icons.close, Colors.red),
          buttonWidget(Icons.star, Colors.blue),
          buttonWidget(Icons.favorite_outline_outlined, Colors.pink),
          buttonWidget(Icons.bolt, Colors.purple),
        ],
      ),
    );
  }
}

