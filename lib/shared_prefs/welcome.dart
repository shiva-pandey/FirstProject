 // import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gym/email.dart';
import 'package:gym/main.dart';

// import 'package:gym/shared_prefs/Skip.dart';
import 'package:shared_preferences/shared_preferences.dart';



class workout extends StatefulWidget {
  const workout({super.key});
  @override
  State<workout> createState() => workoutState();
}

class workoutState extends State<workout> {
  // static const String TEXT =  "TEXT";
 static const String SKIPKEY =  "true";
// var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   appBar: AppBar(title: Center(child: Text(" WELCOME ",style: TextStyle(color: Colors.white24,fontSize: 50,fontWeight: FontWeight.bold),)),backgroundColor: Colors.black,),
      body: Container(decoration: BoxDecoration(gradient: SweepGradient(
        stops: [0.1,0.2,0.3,0.7,0.8,1],
        colors: [Colors.black,Colors.purple,Colors.green,Colors.black,Colors.yellow,Colors.red])),
        child: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
            children: [
            //     TextField(controller: controller,
            //     decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),label: Text("data")),
            //     ),
                  SizedBox(height: 100,),
                  Text("WELCOME !",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.blue),),
                  SizedBox(height: 150,),
                  Text("You are not Logged In",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.purple),),
                  Text("Please Login...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyan),),
                  SizedBox(height: 10,),
        
        
              ElevatedButton(onPressed: ()async{
              //     prefs.setString(TEXT,controller.text.toString());
                    Navigator.push(context, MaterialPageRoute(builder: (context) => email()));
              }, child: Text("GET STARTED",style: TextStyle(fontSize: 30),)),
            ],
          ),
        ),
      )
    );
  }
  

  }
