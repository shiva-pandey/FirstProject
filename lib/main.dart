import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/block_api/blocapi.dart';
import 'package:gym/block_api/fetch_post.dart';
import 'package:gym/friday.dart';
import 'package:gym/saturday.dart';
  import 'package:gym/splesh.dart';
import 'package:gym/sunday.dart';
import 'package:gym/thursday.dart';
import 'package:gym/tuesday.dart';
import 'package:gym/wednesday.dart';
import 'package:shared_preferences/shared_preferences.dart';

 // import 'block/bloc.dart';

import 'block/bloc2.dart';
import 'block/bloc3.dart';
import 'block/getAapi.dart';
import 'demo_page/hidden_drawer.dart';
import 'demo_page/indexed_stack.dart';
import 'block_api/main_page.dart';
import 'bmi.dart';
import 'calculator.dart';
import 'email.dart';
import 'monday.dart';
import 'shared_prefs/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => PostCubit(FetchClass()), // take Fetchclass in bloc
        child: PostPage()),
    );
  }
}
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
drawer: Container(
 width: 400,//color: Colors.black,
  child:   ListView(
    children: [ 
      SizedBox(height: 0,),
      Container(  
        color: Colors.black,
          child: DrawerHeader(
          child: Center(child: Text("GYM TRAINER",style: TextStyle(fontSize: 50,color: Colors.white.withOpacity(.5)),)),),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => BlocProvider(
            create: (context) => SignInBloc(),
            child: bloc2()))));
        },
        child: Container(
          height: 70 ,
          width: 40,
          child: Card(color: Colors.amber.withOpacity(0.1),
            shadowColor: Color.fromARGB(255, 1, 172, 252),
            elevation: 50,
            child: Row(children: [SizedBox(width: 5,),
            Icon(Icons.ad_units),SizedBox(width: 20,),
            Text("BLOC",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            ],),),
        ),
      ),SizedBox(width: 20,),
      InkWell(
         onTap: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context){return HiddenDrawer();}));
        },
        child: Container(
          height: 70 ,
          child: Card(color: Colors.blue.withOpacity(0),
            shadowColor: Color.fromARGB(255, 250, 246, 1),
            elevation: 50,
            child: Row(children: [SizedBox(width: 5,),
            Icon(Icons.build),SizedBox(width: 20,),
            Text("GAME",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            ],),),
        ),
      ),SizedBox(width: 20,),
      
      InkWell(
        onTap: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context){return calculator();}));
        },
        child: Container(
          height: 70 ,
          child: Card(color: Colors.red.withOpacity(0),
            shadowColor: Color.fromARGB(255, 48, 3, 248),
            elevation: 50,
            child: Row(children: [SizedBox(width: 5,),
            Icon(Icons.assignment_turned_in),SizedBox(width: 20,),
            Text("Calculator",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            ],),),
        ),
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
      ),SizedBox(width: 20,),
      
      InkWell(
        onTap: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context){return email();}));
        },
        child: Container(
          height: 70 ,
          child: Card(color: Color.fromARGB(255, 48, 2, 252).withOpacity(.1),
            shadowColor: Colors.blue,
            elevation: 20,
            child: Row(children: [SizedBox(width: 5,),
            Icon(Icons.mail),SizedBox(width: 20,),
            Text("E-Mail",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            ],),),),
      ),
          
          SizedBox(width: 20,),Container(
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


      InkWell(
        onTap: () {
          Navigator.push(context,
           MaterialPageRoute(builder: (context){return bmi();}));
          
        },
        child: Container(
          height: 70 ,
          child: Card(color: Color.fromARGB(255, 4, 46, 6).withOpacity(.1),
            shadowColor: Color.fromARGB(255, 3, 252, 115),
            elevation: 20,
            child: Row(children: [SizedBox(width: 5,),
            Icon(Icons.ad_units),SizedBox(width: 20,),
            Text("BMI Calculator",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
            ],),),
        ),
      ),SizedBox(width: 20,),
   ],
  ),
),


         appBar: AppBar(  leading: Builder(builder: (context){return IconButton(onPressed: (){Scaffold.of(context).openDrawer();}, icon: Icon(Icons.home,color: Colors.red,size: 30,));}),
 title: Text("      APPBAR",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.blue),),
 actions: [TextButton(onPressed: ()async{
      var prefs = await SharedPreferences.getInstance();
      prefs.setBool(workoutState.SKIPKEY,false);
      Navigator.push(context, MaterialPageRoute(builder: ((context) => workout())));
 }, child: Text("log out"))],
      backgroundColor: Colors.black,
     // leading: Icon(Icons.account_balance_wallet_sharp,color: Color.fromARGB(255, 22, 216, 4),size: 30,),
      ),



      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor:  Color.fromARGB(255, 45, 46, 41),
            pinned: true,
            actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){return monday();}));
        }, icon: Icon(Icons.near_me,size: 30,color: Colors.red,)),],
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("NO PAIN NO GAIN...",style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 101, 141, 106)),),
              background: 
                       Container(  color:Colors.black,
                        child: Opacity(opacity: .3,
                          child: Image.asset('assets/images/w4.jpg',width: double.infinity,))),               
            ),
          ),
  SliverList(delegate: SliverChildListDelegate.fixed(
    [
            Opacity(opacity: .5,
              child: ListTile(tileColor: Colors.black,
                    trailing:  Icon(Icons.sports_mma,size: 60,color: Colors.red,),
                    title: Text("MONDAY",style: TextStyle(fontSize: 33,color: Colors.white,fontWeight: FontWeight.bold),),
                    subtitle: Text("CHEST AND TRISEP",style: TextStyle(fontSize: 20,color: Colors.white ),),
                    leading: Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return monday();}));
                    },
                  ),
            ),
        Opacity(opacity: .5,
          child: ListTile(tileColor: Colors.black,
          trailing:  Icon(Icons.sports_gymnastics,size: 60,color: Colors.red,),
          title: Text("TUESDAY",style: TextStyle(fontSize: 33,color: Colors.white,fontWeight: FontWeight.bold),),
          subtitle: Text("Back and Biseps",style: TextStyle(fontSize: 20,color: Colors.white),),
          leading: Text("2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          onTap:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return tuesday();}));
          },
              ),
        ),
        Opacity(opacity: .5,
          child: ListTile(tileColor:  Colors.black,
          trailing:  Icon(Icons.sports_martial_arts,size: 60,color: Colors.red,),
          title: Text("WEDNESDAY",style: TextStyle(fontSize: 33,color: Colors.white ,fontWeight: FontWeight.bold),),
          subtitle: Text("Sholder and fourarms",style: TextStyle(fontSize: 20,color: Colors.white ),),
          leading: Text("3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          onTap:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return wednesday();}));
          },
              ),
        ),
        Opacity(opacity: .5,
          child: ListTile(tileColor: Colors.black,
          trailing:  Icon(Icons.sports_kabaddi,size: 60,color: Colors.red,),
          title: Text("THURSDAY",style: TextStyle(fontSize: 33,color: Colors.white ,fontWeight: FontWeight.bold),),
          subtitle: Text("ABS and WeightLifting",style: TextStyle(fontSize: 20,color: Colors.white ),),
          leading: Text("4",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          onTap:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return thursday();}));
          },
              ),
        ),
        Opacity(opacity: .5,
          child: ListTile(tileColor: Colors.black,
          trailing:  Icon(Icons.sports_sharp,size: 60,color: Colors.red,),
          title: Text("FRIDAY",style: TextStyle(fontSize: 33,color: Colors.white ,fontWeight: FontWeight.bold),),
          subtitle: Text("Strength Traning",style: TextStyle(fontSize: 20,color: Colors.white ),),
          leading: Text("5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          onTap:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return friday();}));
          },
              ),
        ),
        Opacity(opacity: .5,
          child: ListTile(tileColor: Colors.black,
          trailing:  Icon(Icons.accessibility_new_sharp,size: 60,color: Colors.red,),
          title: Text("SATURDAY",style: TextStyle(fontSize: 33,color: Colors.white ,fontWeight: FontWeight.bold),),
          subtitle: Text("Sholder and fourarms",style: TextStyle(fontSize: 20,color: Colors.white ),),
          leading: Text("6",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          onTap:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return saturday();}));
          },
              ),
        ),
        Opacity(opacity: .5,
          child: ListTile(tileColor: Colors.black,
          trailing:  Icon(Icons.sports_bar,size: 60,color: Colors.red,),
          title: Text("SUNDAY",style: TextStyle(fontSize: 33,color: Color.fromARGB(255, 241, 240, 240) ,fontWeight: FontWeight.bold),),
          subtitle: Text("REST",style: TextStyle(fontSize: 20,color: Colors.white ),),
          leading: Text("7",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          onTap:  (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return sunday();}));
          },
              ),
        ),
    ]
  ))  
        ],
      ),
    );
  }
}
