import 'package:flutter/material.dart';
import 'package:gym/chest.dart';

import 'trisep.dart';
 // import 'package:nivesh/chest.dart';
 // import 'package:nivesh/trisep.dart';

class monday extends StatelessWidget {
   monday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
 width: 400,//color: Colors.black,
  child:   Column(
    children: [ 
      SizedBox(height: 0,),
      Container(  
        color: Colors.black,
          child: DrawerHeader(
          child: Center(child: Text("GYM TRAINER",style: TextStyle(fontSize: 50,color: Colors.white.withOpacity(.5)),)),),
      ),
      Container(
        height: 70 ,
        width: 40,
        child: Card(color: Colors.amber.withOpacity(0),
          shadowColor: Color.fromARGB(255, 1, 172, 252),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.ad_units),SizedBox(width: 20,),
          Text("Exercises",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),
      Container(
        height: 70 ,
        child: Card(color: Colors.blue.withOpacity(0),
          shadowColor: Color.fromARGB(255, 250, 246, 1),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.build),SizedBox(width: 20,),
          Text("Workout",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),
      Container(
        height: 70 ,
        child: Card(color: Colors.red.withOpacity(0),
          shadowColor: Color.fromARGB(255, 48, 3, 248),
          elevation: 50,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.assignment_turned_in),SizedBox(width: 20,),
          Text("Custom",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),
      Container(
        height: 70 ,
        child: Card(color: Colors.green.withOpacity(.1),
          shadowColor: Color.fromARGB(255, 45, 252, 4),
          elevation: 40,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.settings),SizedBox(width: 20,),
          Text("Setting",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),Container(
        height: 70 ,
        child: Card(color: Color.fromARGB(255, 48, 2, 252).withOpacity(.1),
          shadowColor: Colors.blue,
          elevation: 20,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.mail),SizedBox(width: 20,),
          Text("E-Mail",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),Container(
        height: 70 ,
        child: Card(color: Colors.pink.withOpacity(.1),
          shadowColor: Color.fromARGB(255, 231, 227, 2),
          elevation: 20,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.thumb_up),SizedBox(width: 20,),
          Text("Rate Us",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),
      Container(
        height: 70 ,
        child: Card(color: Colors.greenAccent.withOpacity(.1),
          shadowColor: Color.fromARGB(255, 2, 247, 55),
          elevation: 20,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.send),SizedBox(width: 20,),
          Text("Send Feedback",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),
      Container(
        height: 70 ,
        child: Card(color: Color.fromARGB(255, 205, 7, 255).withOpacity(.1),
          shadowColor: Color.fromARGB(255, 55, 1, 253),
          elevation: 200,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.share),SizedBox(width: 20,),
          Text("Share With",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 40,),
      Container(
        height: 70 ,
        child: Card(color: Color.fromARGB(255, 4, 46, 6).withOpacity(.1),
          shadowColor: Color.fromARGB(255, 3, 252, 115),
          elevation: 20,
          child: Row(children: [SizedBox(width: 5,),
          Icon(Icons.ad_units),SizedBox(width: 20,),
          Text("BMI Calculator",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ],),),
      ),SizedBox(width: 20,),
   ],
  ),
),
   
         appBar: AppBar(actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close,size: 30,color: Colors.red,)),
      ],
      title: Text("APPBAR",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      backgroundColor: Colors.blue,
     // leading: Icon(Icons.account_balance_wallet_sharp,color: Color.fromARGB(255, 22, 216, 4),size: 30,),
      ),
   
      body: 
           Container(color: Colors.black,
             child: Column(
               children: [
                Container(width: double.infinity,color: Colors.black,
                  
                  child: Center(child: Text("MONDAY",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900,color: Color.fromARGB(255, 199, 4, 4)),))),
                 SizedBox(height: 20,),
                 InkWell( onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return chest();}));
                    },
                   child: Card(
                    elevation: 40,shadowColor: Colors.red,color: Colors.transparent,
                     child: Column(
                      children: [
                         Opacity( opacity: 0.7,child: Image.asset('assets/images/c.jpg',width: 300,)),
                                 Opacity(opacity: 1 ,child: Text("CHEST",style: TextStyle(fontSize: 60,color: Color.fromARGB(126, 156, 2, 2).withOpacity(.8),fontWeight: FontWeight.bold,
                                 shadows: [
                                  Shadow(
                     color: Colors.black,
                     offset: Offset(8,8),
                     blurRadius: 8,
                                  )
                                 ]     
                                 ),)) ],
                     ),
                   ),
                 ),
                  SizedBox(height: 60,),
                 InkWell(onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return trisep();}));
                    },
                   child: Card(
                    elevation: 40,shadowColor: Colors.red,color: Colors.transparent,
                     child: Column(
                      children: [
                         Opacity( opacity: 0.7,child: Image.asset('assets/images/t.jpg',width: 300,)),
                                 Opacity(opacity: 1 ,child: Text("TRISEP",style: TextStyle(fontSize: 60,color: Color.fromARGB(126, 158, 2, 2).withOpacity(.8),fontWeight: FontWeight.bold,
                                 shadows: [
                                  Shadow(
                     color: Colors.black,
                     offset: Offset(8,8),
                     blurRadius: 8,
                                  )
                                 ]           
                                 ),)) ],
                     ),
                   ),
                 ),
                  ],
             ),
           ),    
    );
  }
}