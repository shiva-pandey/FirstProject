import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/block/bloc2.dart';
import 'package:gym/block/bloc3.dart';

class bloc extends StatelessWidget {
  const bloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("FIRST PAGE"),backgroundColor: Colors.blue,),
    body: ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute
      (builder: (context) => BlocProvider(          //wrap page name with blocProvider
        create:(context) =>  SignInBloc(),          // give bloc class name in which all block logic are exist
        child: bloc2()) ));
    },
    style:ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.amber)),
     child: Text("next page")),
    
    );
    
  }
}

// wrap the pagename in onPressed/myapp/.. with blocProvider ; give bloc class name in create ; give pagename/myapp/... in child  
// when we give event then use... blocprovider.of<blocname>...add(event name).....and state will automatically emit
// when we call state then we wrap with ... BlocBuilder