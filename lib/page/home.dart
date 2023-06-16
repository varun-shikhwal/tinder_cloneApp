import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:tinder/functions/alertFunction.dart';
import 'package:tinder/widgets/appBar.dart';
import 'package:tinder/widgets/bottomBar.dart';

import '../utils/constants.dart';
class homePage extends StatefulWidget{
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  List<SwipeItem> _swipeItems = <SwipeItem>[];

  MatchEngine? _matchengine;

  List<String> names = [
    'Haley',
    'Amelia',
    'Evie',
    'Olivia',
    'Ava',
    'Noah',
    'Lucy',
    'Isabella',
    'Ethan',
    'Benjamin',
    'Scarlett',
    'Alice',
    'Victoria',
    'Emma',
  ];
  List<String> ages = [
    '23',
    '25',
    '26',
    '26',
    '22',
    '25',
    '23',
    '21',
    '27',
    '24',
    '23',
    '26',
    '25',
    '22',
  ];
  
  @override
  void initState() {
    for(int i=0;i<names.length;i++){
      _swipeItems.add(SwipeItem(content: Content(text: names[i]),
        likeAction: (){
        action(context, names[i], 'Liked');
        },
        nopeAction: (){
        action(context, names[i], 'Rejected');
        },
        superlikeAction: (){
        action(context, names[i], 'SuperLiked');
        },
      ));
    }
    _matchengine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
           const SizedBox(height: 70,),
           const topbar(),
            Expanded(child: Container(
              child: SwipeCards(matchEngine:_matchengine!,
                  itemBuilder: (BuildContext context,int index){
                 return Container(
                   alignment: Alignment.bottomLeft,
                   decoration: BoxDecoration(
                     image:DecorationImage(
                       image: AssetImage(images[index]),
                       fit: BoxFit.cover,
                     ),
                     borderRadius: BorderRadius.circular(11),
                     // color: Colors.re,

                   ),
                   padding: const EdgeInsets.all(20),
                   child: Column(mainAxisSize: MainAxisSize.min,
                     children: [
                       Text(names[index],style:const TextStyle(
                         fontSize: 32,
                         color: Colors.white,
                         fontWeight: FontWeight.bold
                       ),),
                     ],
                   ),
                 );
              },
              onStackFinished:(){
                  return ScaffoldMessenger.of(context).
                  showSnackBar(const SnackBar(
                      content:Text('The List is over')));
                },
              ),
            ),),
            const bottomBar(),
          ],
        ),
      ),
    );
  }
}

class Content{
  final String text;
  Content({required this.text});
}