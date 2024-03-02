import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {

var ctrl1=TextEditingController();
var ctrl2=TextEditingController();
var ctrl3=TextEditingController();
var result="";
var msg= "";
var color=Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("BMI"),),
      body: Container( alignment: Alignment.center,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
              SizedBox(height: 20,),
            Stack(children: [
      
             Text("BMI",style: TextStyle(fontSize: 150,fontWeight: FontWeight.bold),),
            Positioned(top: 150 ,left: 10 ,child: Text("CALCULATOR",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),))
                     ],),
      
             Text("HEIGHT",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
               Container(width: 300 , height: 40 , color: Colors.white   ,child: TextField(
                decoration: InputDecoration(hintText: "height in feet"),
                 controller: ctrl1, style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),cursorHeight: 30,
               )),
               SizedBox(height: 20,),
               Container(width: 300 , height: 40 , color: Colors.white   ,child: TextField(
                decoration: InputDecoration(hintText: "height in inch"),
                controller: ctrl2,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),cursorHeight: 30,
               )),
      
            Text("WEIGHT",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Container(width: 300 , height: 40 , color: Colors.white   ,child: TextField(
                decoration: InputDecoration(hintText: "weight in kg"),
                controller: ctrl3,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),cursorHeight: 30,
              )),
          
          SizedBox(height: 20,),
          Container(height: 50,width: 300,alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(21),color: color),
            child: Text(msg,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 14, 12, 12)),),
          ),


SizedBox(height: 20,),
           InkWell(
            onTap: (){
                   var feet = int.parse( ctrl1.text.toString());
                   var inch = int.parse(ctrl2.text.toString());
                   var kg   = int.parse(ctrl3.text.toString());

                 var bmi1 = (feet*12+inch)/39.38 ;
                 var bmi  = kg/(bmi1 * bmi1) ;     
              
              result = "${bmi.toStringAsFixed(2)}";   

              if(bmi<16){
          msg = "SEVERE THINNESS";
          color = Colors.red;

              }else if(bmi<19){
            msg = "MILD THINNESS";
          color = Colors.blue;
                
              }else if(bmi<25){
          msg = "NORMAL";
          color = Colors.green;


              }else if(bmi<35){
             msg = "OVER WEIGHT";
          color = Colors.deepPurple;


              }else{
             msg = "OBESE";
          color = Colors.pink;

              }

              setState(() {
 //               print(bmi);
              });
            },
             child: Card( elevation: 30,color: Color.fromARGB(255, 2, 233, 10).withOpacity(1),shadowColor: Color.fromARGB(255, 131, 3, 20),
              child: Text("   CALCULATE   ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
             ),
           ),
      
           SizedBox(height: 30,),
           Text("BMI : $result",style: TextStyle(fontSize: 40),),




          ],
        ),
      ),
    );
  }
}