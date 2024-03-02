import 'package:flutter/material.dart';
import 'package:gym/shared_prefs/workout.dart';

import 'package:shared_preferences/shared_preferences.dart';

class BlankPage extends StatefulWidget {
  const BlankPage({super.key});

  @override
  State<BlankPage> createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("BLANCK PAGE"),backgroundColor: Colors.blue,),
    body: Column(
      children: [
        ElevatedButton(onPressed: ()async{
 var prefs = await SharedPreferences.getInstance();
           prefs.setBool(workoutState.SKIPKEY, false);
           Navigator.push(context, MaterialPageRoute(builder: (context) => workout()));

        }, child: Text("logout",style: TextStyle(fontSize: 30),)),
      
      ElevatedButton(onPressed: ()async{

           Navigator.push(context, MaterialPageRoute(builder: (context) => workout()));

        }, child: Text("main page",style: TextStyle(fontSize: 30),)),
      ],
    )
    );
  }
}