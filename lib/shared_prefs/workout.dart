 // import 'dart:async';

import 'package:flutter/material.dart';

import 'package:gym/shared_prefs/Skip.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'blank.dart';

class workout extends StatefulWidget {
  const workout({super.key});

  @override
  State<workout> createState() => workoutState();
}

class workoutState extends State<workout> {
static const String TEXT =  "TEXT";
 static const String SKIPKEY =  "true";
 var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" workout APPBAR"),backgroundColor: Colors.amber,),
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
             TextField(controller: controller,
             decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),label: Text("data")),
             ),


          ElevatedButton(onPressed: ()async{

var prefs = await SharedPreferences.getInstance();
               prefs.setString(TEXT,controller.text.toString());
                 var tf =    prefs.getBool(SKIPKEY);
               if (tf != null ){
                if(tf == false){ Navigator.push(context, MaterialPageRoute(builder: (context) => Skip()));}  
               else{ Navigator.push(context, MaterialPageRoute(builder: (context) => BlankPage(), ));}  
               }else(
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Skip()))
               );
          }, child: Text(">",style: TextStyle(fontSize: 50),)),
        ],
      )
    );
  }
  

  }
