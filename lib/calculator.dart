import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var controller1=TextEditingController();
  var controller2=TextEditingController();
    var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CALCULATOR",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),backgroundColor: Colors.blue,
      actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close,size: 30,color: Colors.red,)),]),
      body: Center(child: Column(  // mainAxisAlignment: MainAxisAlignment.center,
     // crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          SizedBox(height: 40,),

Container(height: 80,width: 400,decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blue,Colors.red,Colors.green,Colors.blue]),
borderRadius: BorderRadius.circular(30)
),
child: Text("  CALCULATOR",   style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 32, 3, 138),fontWeight:FontWeight.bold,shadows: [Shadow(offset: Offset(8, 8),color: Colors.yellow,blurRadius: 5)])),
),

SizedBox(height: 40,),
          Container(height: 50,width: 200,color: Colors.blue.shade100,// padding: EdgeInsets.only(top: 15),
            child: TextField(
             // textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.w600),
              decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                color: Colors.deepPurple,
                width: 2,
                ))),
              controller: controller1,
              keyboardType: TextInputType.number,cursorHeight:30 ,),
          ),

          SizedBox(height: 10,),
           Container(height: 50,width: 200,color: const Color.fromARGB(255, 54, 65, 75),// padding: EdgeInsets.only(top: 15),
            child: TextField(
             // textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.w600),
              decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                color: Colors.deepPurple,
                width: 2,
                ))),
              controller: controller2,
              keyboardType: TextInputType.number,cursorHeight:30 ,),
          ),

          SizedBox(height: 30,),

          
           // crossAxisAlignment: CrossAxisAlignment.center,

            
          
           
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 40,
                     shadowColor: Color.fromARGB(255, 247, 52, 3),
                      textStyle: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.red),
                      primary: Color.fromARGB(255, 236, 4, 197).withOpacity(.6)),
                    onPressed: (){
                    var sum1=int.parse(controller1.text.toString());
                     var sum2=int.parse(controller2.text.toString());
                         var sum= sum1 + sum2;
                          result= "$sum";
                         setState(() {});
              }, child: Icon(Icons.add,color: Colors.red,size: 45,)),
                 
SizedBox(width: 30,),
  ElevatedButton(
     style: ElevatedButton.styleFrom(
                  elevation: 40,
                 shadowColor: const Color.fromARGB(255, 6, 238, 13),
                  textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),
                  primary: Color.fromARGB(255, 201, 236, 4).withOpacity(.6)),
    onPressed: (){
              var sum1=int.parse(controller1.text.toString());
               var sum2=int.parse(controller2.text.toString());
         var sub= sum1 - sum2;
          result= "$sub";
         setState(() {});
            }, child: Text("  -  ",style: TextStyle(color: Colors.red),)),
          ],),


SizedBox(height: 30,),
              Row(  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      elevation: 40,
                     shadowColor: Color.fromARGB(255, 198, 240, 9),
                      textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),
                      primary: Color.fromARGB(255, 47, 4, 236).withOpacity(.6)),
                    
                    onPressed: (){
                  var sum1=int.parse(controller1.text.toString());
                   var sum2=int.parse(controller2.text.toString());
         var mul= sum1 * sum2;
          result= "$mul";
         setState(() {});
            }, child: Text("  *  ",style: TextStyle(color: Colors.red,),)),
                
              SizedBox(width: 30,),

              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  elevation: 40,
                 shadowColor: Color.fromARGB(255, 136, 10, 240),
                  textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),
                  primary: Color.fromARGB(255, 4, 236, 81).withOpacity(.5)),
                onPressed: (){
              var sum1=int.parse(controller1.text.toString());
               var sum2=int.parse(controller2.text.toString());
         var div= sum1 / sum2;
          result= "$div";
         setState(() {});
            }, child: Text("  /  ",style: TextStyle(color: Colors.red),)),
                ],),


SizedBox(height: 30,),
              Row(  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      elevation: 40,
                     shadowColor: const Color.fromARGB(255, 6, 241, 13),
                      textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),
                      primary: Color.fromARGB(255, 236, 4, 4).withOpacity(.1)),
                    onPressed: (){
                  var sum1=int.parse(controller1.text.toString());
                   var sum2=int.parse(controller2.text.toString());
         var per= (sum1 * sum2)/100;
          result= "$per";
         setState(() {});
            }, child: Text("  %  ",style: TextStyle(color: Colors.red),)),

SizedBox(width: 30,),
ElevatedButton(
  style: ElevatedButton.styleFrom(
    elevation: 40,
    shadowColor: Colors.lime,
    primary: Color.fromARGB(255, 2, 50, 207),
    textStyle: TextStyle(fontSize: 40,color: Colors.red,fontWeight: FontWeight.bold)
  ),
  onPressed: (){}, child: Text("  =  ",style: TextStyle(color: Colors.red),))

                ],
              ),

        SizedBox(height: 40,),     
        
          Container(height: 60,width: 400,decoration: BoxDecoration(gradient:LinearGradient(
            colors: [Colors.red.withOpacity(.8),Colors.blue.withOpacity(.8),Colors.orange.withOpacity(.8)]),
            borderRadius: BorderRadius.all(Radius.circular(30))
             ),
        
         child:  Text(" RESULT : $result",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),))
        ],
      ),),
    );
  }
}