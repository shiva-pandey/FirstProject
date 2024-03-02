import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gym/main.dart';


class splesh extends StatefulWidget {
  const splesh({super.key});

  @override
  State<splesh> createState() => _spleshState();
}

class _spleshState extends State<splesh>with SingleTickerProviderStateMixin {

late Animation animation;
late AnimationController animationController;
late Animation colorAnimation;
late Animation animation1;
@override
  void initState() {
        super.initState();
        Timer(Duration(seconds: 7), () {
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return MyHomePage();}));
         });

  
  animationController= AnimationController(vsync: this,duration: Duration(seconds: 6));
  animation= Tween(begin: 0.0, end: 1).animate(animationController);
animation1= Tween(begin: 0.0, end: 200.0).animate(animationController);
  colorAnimation= ColorTween(begin: Color.fromRGBO(17, 19, 18, 1),end: Color.fromARGB(253, 245, 244, 244),).animate(animationController);
  animationController.addListener(() {
    print(animation.value);
    setState(() {
      
    });
  });

animationController.forward();

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        //   height:double.infinity,
          color: Colors.black,
           // color: const Color.fromARGB(255, 169, 186, 216),
            child: Stack(
              children: [
             
                Opacity(opacity: animation.value,child: Image.asset('assets/images/w2.jpg'  ,width: 800,height:900 ,fit: BoxFit.fill,))  ,
              
                  Positioned(left: 20,top: 50,
                    child: Text("GYM",style: TextStyle(color: Color.fromARGB(132, 136, 17, 1),fontSize: animation1.value, fontWeight: FontWeight.w900,),)),
                 //  Positioned(top: 500,left: 75, child:Opacity(opacity: animation.value,child: Icon(Icons.sports_gymnastics_rounded,size: animation1.value,color: Color.fromARGB(255, 97, 9, 2),))),
               Positioned (
                  top: 460,left: 70,
                  child: Opacity(
                    opacity: animation.value,
                    child: Text("TRANING...",style: TextStyle(
                      fontSize: 70,
                      color: colorAnimation.value,
                      fontWeight: FontWeight.bold,
                      ),),
                  ),
                ),
                // Image.asset('assets/images/robot.jpg'),
              ],
            ),
          ),
        ),
    );
  }
}