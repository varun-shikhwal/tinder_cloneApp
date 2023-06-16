import 'package:flutter/material.dart';
import 'package:tinder/utils/button.dart';
import 'package:tinder/utils/image.dart';
class topbar extends StatefulWidget {
  const topbar({super.key});

  @override
  State<topbar> createState() => _topbarState();
}

class _topbarState extends State<topbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // color: Colors.indigo,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonWidget(Icons.star, Colors.amber),
          imageWidget('assets/images/diamond.png'),
          imageWidget('assets/images/tinder1.jpg'),
          buttonWidget(Icons.notifications, Colors.grey.shade500),
          // buttonWidget(Icons., Colors.amber),
        ],
      ),
    );
  }
}

