import 'dart:async';

import 'package:flutter/material.dart';

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  static double Yaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = Yaxis;
  bool gameHasStarted = false;
  static double box1 = 0;
  double box2 = box1 +1.5;

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      box1 -= 0.04;
      box2 -= 0.04;
      time += 0.06;
      height = -4.9 * time * time + 3 * time;
      setState(() {
        Yaxis = initialHeight - height; 
      });
(box1 < -1.3) ? box1 += 3 : box1 -= 0 ;
(box2 < -1.3) ? box2 += 3 : box2 -= 0 ;
    });
  }

  void jump() {
    setState(() {
      time = 0;
      initialHeight = Yaxis;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(children: [
          InkWell(
            onTap: () {
              if (gameHasStarted) {
                jump();
              } else {
                startGame();
              }
            },
            child: AnimatedContainer(
              alignment: Alignment(0, Yaxis),
              height: 600,
              color: Colors.blue,
              duration: Duration(milliseconds: 20),
              child: Icon(
                Icons.amp_stories,
                size: 60,
                color: Colors.red,
              ),
            ),
          ),
         
          Container(
            height: 600,
            width: 500,
            alignment: Alignment(0, -0.2),
            child: (gameHasStarted)  ? Text("") : Text(
              "T  A  P     T  O     P  L  A  Y",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
           AnimatedContainer(
            height: 600,
            alignment: Alignment(box1, 1),
            duration: Duration(milliseconds: 20),
             child: Container(
                color: Colors.black,
                height: 150,
                width: 50,
              )
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 0),
            alignment: Alignment(box1, -1),
             child: Container(
                color: Colors.black,
                height: 150,
                width: 50,
              )
          ),
          AnimatedContainer(
            height: 600,
            child: Container(
                color: Colors.black,
                height: 100,
                width: 50,
              ),
            duration: Duration(milliseconds: 0),
            alignment: Alignment(box2, 1),
          ),
          AnimatedContainer(
              duration: Duration(milliseconds: 0),
              alignment: Alignment(box2, -1),
              child: Container(
                color: Colors.black,
                height: 200,
                width: 50,
              )),
        ]),Container(height: 20,color: Colors.green,),
        Expanded(
          child: Container(
            alignment: Alignment(0, 0),
            //  height: 300,
            color: Colors.brown,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text("S C O R E",style: TextStyle(fontSize: 20,color: Colors.white),),SizedBox(width: 20,),
                        Text("B E S T",style: TextStyle(fontSize: 20,color: Colors.white),)
                      ],
                    ),
                    Row(children: [
                      Text("0  ",style: TextStyle(fontSize: 20,color: Colors.white),),SizedBox(width: 20,),
                      Text("         10",style: TextStyle(fontSize: 20,color: Colors.white),)
                    ],)
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
