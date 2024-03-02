import 'package:flutter/material.dart';

class fourarms extends StatelessWidget {
  const fourarms ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: DefaultTabController(length: 4,child: Scaffold(
    appBar: AppBar(actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close,size: 30,color: Colors.red,)),
      ],
      title: Center(child: Text("CHEST WORKOUT",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
      backgroundColor: Colors.blue,
        ),
   
      body: Column(children: [
        TabBar(tabs: [
          Tab(icon: Icon(Icons.sports_gymnastics,color: Colors.red,),),
          Tab(icon: Icon(Icons.sports_gymnastics,color: Colors.red,),),
          Tab(icon: Icon(Icons.sports_gymnastics,color: Colors.red,),),
      //    Tab(icon: Icon(Icons.sports_gymnastics,color: Colors.red,),),
         
        ]),


          Expanded(child: TabBarView(children: [
        Container(child:Column(children: [
           Card(elevation: 15,shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(21),),
          shadowColor: Colors.deepPurple,color: Colors.transparent,
         child: Center(child: Text("WRIST TWIST", style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 63, 1, 1).withOpacity(1),fontWeight: FontWeight.bold),)),),
     SizedBox(height: 30,),
      Image.asset("assets/images/fourarms1.gif"),
        Column(
            children: [
              Card(color: Colors.blue.withOpacity(0.2),
          shadowColor: Color.fromARGB(255, 250, 246, 1),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
       //   Icon(Icons.build),SizedBox(width: 20,),
          Text("SET : 3",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
           Card(color: Color.fromARGB(255, 243, 82, 33).withOpacity(0.2),
          shadowColor: Color.fromARGB(255, 47, 1, 250),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
         // Icon(Icons.build),SizedBox(width: 20,),
          Text("REP : 12",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
            ],
          ),
        ],)),


 Container(child:Column(children: [
           Card(elevation: 15,shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(21),),
          shadowColor: Colors.deepPurple,color: Colors.transparent,
          
          child: Center(child: Text("WRIST CURL", style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 63, 1, 1).withOpacity(1),fontWeight: FontWeight.bold),)),),
     SizedBox(height: 30,),
      Image.asset("assets/images/fourarms2.gif"),
        Column(
            children: [
              Card(color: Colors.blue.withOpacity(0.2),
          shadowColor: Color.fromARGB(255, 250, 246, 1),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
       //   Icon(Icons.build),SizedBox(width: 20,),
          Text("SET : 3",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
           Card(color: Color.fromARGB(255, 243, 82, 33).withOpacity(0.2),
          shadowColor: Color.fromARGB(255, 47, 1, 250),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
         // Icon(Icons.build),SizedBox(width: 20,),
          Text("REP : 12",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
            ],
          ),
        ],)),


Container(child:Column(children: [
           Card(elevation: 15,shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(21),),
          shadowColor: Colors.deepPurple,color: Colors.transparent,
          
          child: Column(
            children: [
              Center(child: Text("PULL ROPE", style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 63, 1, 1).withOpacity(1),fontWeight: FontWeight.bold),)),
               Center(child: Text("WRIST CURL", style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 63, 1, 1).withOpacity(1),fontWeight: FontWeight.bold),)),
            ],
          ),),
     SizedBox(height: 30,),
      Image.asset("assets/images/fourarms3.gif"),
        Column(
            children: [
              Card(color: Colors.blue.withOpacity(0.2),
          shadowColor: Color.fromARGB(255, 250, 246, 1),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
       //   Icon(Icons.build),SizedBox(width: 20,),
          Text("SET : 3",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
           Card(color: Color.fromARGB(255, 243, 82, 33).withOpacity(0.2),
          shadowColor: Color.fromARGB(255, 47, 1, 250),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
         // Icon(Icons.build),SizedBox(width: 20,),
          Text("REP : 12",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
            ],
          ),
        ],)),

        
 


        Container(child: Text("data"),),


        Container(child: Text("data"),),])),
      ],),
     ),)
    );
  }
}