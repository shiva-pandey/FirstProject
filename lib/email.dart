import 'package:flutter/material.dart';

class email extends StatefulWidget {
  const email({super.key});

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("E-MAIL",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),backgroundColor: Colors.blue,
      leading: Icon(Icons.mail_lock),
      actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close,size: 30,color: Colors.red,)),]),
      body: Column(
       children:[ Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              
              CircleAvatar(backgroundImage: AssetImage("assets/images/w6.jpg"),maxRadius: 70,),
              Text("Login",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
              
              
              TextField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.mail,color: Colors.red,size: 20,),
                labelText: "USER NAME",
                hintText: "Type Your User Name",
                suffixIcon: Icon(Icons.remove_red_eye,color: Colors.blue,)
                ),
              ),
              
              
               TextField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.lock,color: Colors.red,size: 20,),
                labelText: "PASSWORD",
                hintText: "Enter Your Password",
                suffixIcon: Icon(Icons.remove_red_eye,color: Colors.red,),
                ),
                obscureText: true,
              ),

             Text("                                                                 Forget Password?",style: TextStyle(color: Colors.red),),
             SizedBox(height: 40,),
 
  InkWell(
    onTap: (){},
    child: Container(height: 40,width: 300,decoration: BoxDecoration(gradient:LinearGradient(
              colors: [Colors.red.withOpacity(1),Colors.blue.withOpacity(1),Colors.orange.withOpacity(1)]),
              borderRadius: BorderRadius.all(Radius.circular(30))
               ),
          
           child:  Text("              Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
  ),
       SizedBox(height: 40,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CircleAvatar( maxRadius: 30,
            child: Text("f",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),),
SizedBox(width: 20,),
 CircleAvatar( maxRadius: 30,backgroundColor: Colors.red,
            child: Text("G",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),),

            SizedBox(width: 20,),
 CircleAvatar( maxRadius: 30,backgroundColor: Color.fromARGB(255, 220, 243, 247),
            child: Icon(Icons.wechat,size: 50,color: Color.fromARGB(255, 24, 1, 126),)),

         ],)

            ],
          ),
          
          ),],
      ));
  }
}