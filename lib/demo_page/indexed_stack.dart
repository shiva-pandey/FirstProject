import 'package:flutter/material.dart';

class demo1 extends StatefulWidget {
  const demo1({super.key});

  @override
  State<demo1> createState() => _demo1State();
}

class _demo1State extends State<demo1> {
int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(color: Colors.black,
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    index = 0;
                  });}, child: Text("0"),),
                ElevatedButton(onPressed: (){setState(() {
                  index = 1;
                });}, child: Text("1")),
                ElevatedButton(onPressed: (){setState(() {
                  index = 2;
                });}, child: Text("2"))
              ],
            ),
          ),
          IndexedStack(
            index: index,
            children: [
              Container(color: Colors.amber,width: double.infinity,
                child: Center(child: Text("0",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),))),
              Container(color: Colors.purple,width: double.infinity,
                child: Center(child: Text("1",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),))),
              Container(color: Colors.red,width: double.infinity,
                child: Center(child: Text("2",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)))
            
            ],
          ),  //  SizedBox(height:50),

           // FADE IN IMAGE 
          Stack(
            children: [
              Container(height: 650,width: 500,
          decoration: BoxDecoration(gradient: SweepGradient(colors: [Colors.black,Colors.purple,Colors.orange])),),
              FadeInImage.assetNetwork(
                placeholder: "assets/images/sholder2.gif",
                image: "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=600",
                height: 300,width: 500,                ),
            ],
          ),
            
        ],
      ),
    );
  }
}