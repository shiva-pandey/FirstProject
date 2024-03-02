import 'package:flutter/material.dart';
import 'package:gym/shared_prefs/blank.dart';
import 'package:gym/shared_prefs/workout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Skip extends StatefulWidget {
  const Skip({super.key});

  @override
  State<Skip> createState() => _SkipState();
}

class _SkipState extends State<Skip> {
var userName = "no value";
  @override
  void initState() {
    super.initState();
    methord2();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("skip appbar"),),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [


             ElevatedButton(onPressed: ()async{
              var prefs = await SharedPreferences.getInstance();
              prefs.setBool(workoutState.SKIPKEY, true);
               Navigator.push(context, MaterialPageRoute(builder: (context) => BlankPage(),) );
             }, child: Text("login",style: TextStyle(fontSize: 50),)),
           Container( height:  50,width: 300,color: Colors.blue,
            child: Text(userName,style: TextStyle(fontSize: 30,color: Colors.red),)),
        ],
      ),
    );
  }
  
  void methord2()async {
 var prefs = await SharedPreferences.getInstance();
   var user =  prefs.getString(workoutState.TEXT);
   userName = user ?? "no value";
    setState(() {});
  }
}

/*
class _workoutState extends State<workout> {

var nameCotroller = TextEditingController();
 static const String NAMEVALUE = "name";
var name = "no";
@override
void initState() {
  super.initState();
  getValue();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("APPBAR")),
        backgroundColor: Colors.amber,),
     body: Column(  
      children: [ 
      TextField(  controller: nameCotroller,),
      ElevatedButton(onPressed: ()async{
        var prefs = await SharedPreferences.getInstance();
        prefs.setString(NAMEVALUE, nameCotroller.text.toString());
        getValue();
      }, child: Text("click")),
      Text(name),
     ],
     )
    );
  }
void getValue()async{
  var prefs = await SharedPreferences.getInstance();
  var getname = prefs.getString(NAMEVALUE);
  name = getname ?? "no value";
  setState(() {});
}

}  */

