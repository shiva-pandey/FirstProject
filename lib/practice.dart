import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class practice extends StatefulWidget {
   practice ({super.key});

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {


    PageController _pageController = PageController();
     var index = [1,2,3,4,5,6,];
     var controller1 = TextEditingController();
     var controller2 = TextEditingController();
     var controller3 = TextEditingController();
    var controller4 = TextEditingController();
    var controller5 = TextEditingController();
    var controller6 = TextEditingController();
    var controller7 = TextEditingController();
      var color1 = Colors.white;
      var color2 = Colors.white;
      var color3 = Colors.white;
      var color4 = Colors.white;
      var color5 = Colors.white;
      var color6 = Colors.white;
      var color7 = Colors.white;
     var score = 0;
     var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar : AppBar(title : Text("data")),
     
   //  key: _scaffoldkey,

     body:
      
       
            PageView( physics: NeverScrollableScrollPhysics(),
                scrollDirection : Axis.horizontal,
                controller: _pageController,
    //             onPageChanged: (value) {
      //             setState(() {  });
        //         },
                children: [



                 



               Container(height: 100, width: 300,    color: Colors.green,
               child: Column(
                 children: [
                  Text("TEST",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                   Text("1.  national animal of india?",style: TextStyle(fontSize: 20),),
                   TextField( 
                    controller: controller1,
                    decoration: InputDecoration(hintText: "write answer"),),
                    ElevatedButton(onPressed: (){
                        var ans1 = controller1.text.toString();
                       if(ans1 == "lion"){ color1 = Color.fromARGB(255, 1, 102, 4) ; score = 1;
                       }else{color1 = Colors.red; score = 0; };
                       setState(() {   });
                   }, child: Text("answer")),
                  Container(  height: 50, width: 50, color: color1 ,),
                   Text("SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                 ElevatedButton(onPressed: (){
                    _pageController.animateToPage( _pageController.page!.ceil()+1 , duration: Duration(seconds: 1), curve: Curves.bounceInOut);
                      setState(() { });
                 }, child: Text("next"))
                 
                 ],
               ),
               ),



               
                 Container(  height: 100, width: 300,   color: Colors.red,
                    child: Column(
                      children: [
                        Text("2. national bird of india?",style: TextStyle(fontSize: 30),),
                  TextField( controller: controller2,
                    decoration: InputDecoration(hintText: "answer"),),
                   ElevatedButton(onPressed: (){
                       var ans2 = controller2.text.toString();
        if( ans2 == "peacock" ){color2 = Colors.green; score = score+1 ; }else{color2 = Colors.red; score = --score; }
                   setState(() {
                   });
                  }, child: Text("answer")),
                   Container(height: 50, width: 50, color:color2,),
                   Text("SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                   ElevatedButton(onPressed: (){
                    _pageController.animateToPage( _pageController.page!.ceil()+1 , duration: Duration(seconds: 1), curve: Curves.bounceInOut);
                      setState(() { });
                 }, child: Text("next"))
                ] ),  
                ),



                
                 Container(  height: 100, width: 300,   color: Colors.amber,
                 child: Column(
                   children: [
                     Text("3.  national flower of india?",style: TextStyle(fontSize: 20),),
                     TextField( controller: controller3,
                      decoration: InputDecoration(hintText: "answer"),),
                     ElevatedButton(onPressed: (){
                     var ans3 = controller3.text.toString();
                     if( ans3 == "lotus" ){ color3 = Colors.green; score = score+1; }else{ color3 = Colors.red; --score; }
                        setState(() {    });
                     }, child: Text("answer")),
                     Container(height: 50, width: 50, color: color3, ),
                     Text("SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                     ElevatedButton(onPressed: (){
                    _pageController.animateToPage( _pageController.page!.ceil()+1 , duration: Duration(seconds: 1), curve: Curves.bounceInOut);
                      setState(() { });
                 }, child: Text("next"))
                   ],
                 ),),
                 
                 
                 
                 
                  Container(  height: 100, width: 300,   color: Colors.blue,
                  child: Column(
                    children: [
                      Text("4.  value of sin(90)?",style: TextStyle(fontSize: 20),),
                      TextField( controller: controller4,
                        decoration: InputDecoration(hintText: "answer"),),
                      ElevatedButton(onPressed: (){
                        var ans4 = controller4.text.toString();
                      if( ans4 == "1" ){ color4 = Colors.green; score = score+1;}else{ color4 = Colors.red; score = --score; }
                         setState(() { });
                      }, child: Text("answer")),
                      Container(height: 50, width: 50, color: color4 , ),
                      Text("SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                      ElevatedButton(onPressed: (){
                    _pageController.animateToPage( _pageController.page!.ceil()+1 , duration: Duration(seconds: 1), curve: Curves.bounceInOut);
                      setState(() { });
                 }, child: Text("next"))
                    ],
                  )
                  ),
                  
                  
                  
                  
                   Container(  height: 100, width: 300,   color: Colors.pink,
                   child: Column(
                     children: [
                       Text("5. value cos(90)?",style: TextStyle(fontSize: 20),),
                        TextField( controller: controller5,
                        decoration: InputDecoration(hintText: "answer"),),
                      ElevatedButton(onPressed: (){
                        var ans5 = controller5.text.toString();
                      if( ans5 == "0" ){ color5 = Colors.green; score = score+1;}else{ color5 = Colors.red; score = --score; }
                         setState(() { });
                      }, child: Text("answer")),
                      Container(height: 50, width: 50, color: color5 , ),
                      Text("SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                  ElevatedButton(onPressed: (){
                    _pageController.animateToPage( _pageController.page!.ceil()+1 , duration: Duration(seconds: 1), curve: Curves.bounceInOut);
                      setState(() { });
                 }, child: Text("next"))
                     ],
                   )
                   ),
                   
                   

                   
                    Container( height: 100, width: 300,   color: Colors.deepPurple,
                    child: Column(
                      children: [
                        Text("6. value of tan(45)?",style: TextStyle(fontSize: 20),),
                         TextField( controller: controller6,
                        decoration: InputDecoration(hintText: "answer"),),
                      ElevatedButton(onPressed: (){
                        var ans6 = controller6.text.toString();
                      if( ans6 == "1" ){ color6 = Colors.green; score = score+1;}else{ color6 = Colors.red; score = --score; }
                         setState(() { });
                      }, child: Text("answer")),
                      Container(height: 50, width: 50, color: color6 , ),
                      Text("SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                      ElevatedButton(onPressed: (){
                    _pageController.animateToPage( _pageController.page!.ceil()+1 , duration: Duration(seconds: 1), curve: Curves.bounceInOut);
                      setState(() { });
                 }, child: Text("next"))
                      ],
                    )
                    ),
                    
                    
                    
                    
                    
                     Container(height: 100, width: 300, color: Colors.black12,
                  child: Column(
                    children: [
                      Text("7.  national song of india?",style: TextStyle(fontSize: 20),),
                       TextField( controller: controller7,
                        decoration: InputDecoration(hintText: "answer"),),
                      ElevatedButton(onPressed: (){
                        var ans7 = controller7.text.toString();
                      if( ans7 == "vande matram" ){ color7 = Colors.green; score = score+1;}else{ color7 = Colors.red; score = --score; }
                         setState(() { });
                      }, child: Text("answer")),
                      Container(height: 50, width: 50, color: color7,),
                      Text("SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                      ElevatedButton(onPressed: (){
                    _pageController.animateToPage( _pageController.page!.ceil()+1 , duration: Duration(seconds: 1), curve: Curves.bounceInOut);
                      if( score/7*100>33 ){ result = "pass"; }else{ result = "fail"; };
                      
                      setState(() { });
                 }, child: Text("finish"))
                    ],
                  )
                     ),


                   Center(
                     child: Container(
                       child: Column(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("YOUR TOTAL SCORE = $score", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                            Text(" PRCENTAGE = ${(score/7*100).toStringAsFixed(0)}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                          Text("YOUR RESULT = ${result}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                         
                         ],
                       ),
                     ),
                   )


            ],),
       
       
    );
  }
}