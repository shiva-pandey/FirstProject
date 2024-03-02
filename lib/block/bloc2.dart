import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/block/bloc3.dart';
import 'package:gym/block/event.dart';
import 'package:gym/block/state.dart';

class bloc2 extends StatelessWidget {
    

final emailController = TextEditingController();

final passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("second page"),),
    body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
       
          BlocBuilder<SignInBloc, SignInState>(    // wrap the text with blocBuilder and give bloc class name and state class name
            builder: (context, state) {
               if(state is SignInErrorState){  // if state = this state condition then return state.errorMassage which we give 
               return Text( state.errorMassage , style: TextStyle(color: Colors.red),);
              }else{ return Container();}
            }
          ),
       
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          width: 300,
          
          child: TextField(      //  hit the event
             controller: emailController,
            onChanged: (value) {  //  give blocProvoder.of...add( eventname(give required values))
              BlocProvider.of<SignInBloc>(context).add(SignInTextChangeEvent(
                emailController.text.toString(), passwordController.text.toString()));
            },

            decoration: InputDecoration(label: Text("e-mail"),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(width: 300,
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: TextField(
            controller: passwordController,
               onChanged: (value){
              BlocProvider.of<SignInBloc>(context).add(
                SignInTextChangeEvent(emailController.text.toString(), passwordController.text.toString())
              );},
            decoration: InputDecoration(label: Text("password"),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          ),
        ),
      
      BlocBuilder<SignInBloc,SignInState>(builder: ((context, state) {
        if(state is SignInloadingState){ return   CircularProgressIndicator();}
        return  ElevatedButton(onPressed: (){
          if(state is SignInValidState){         // if buton color is blue then when we click call the event
            BlocProvider.of<SignInBloc>(context).add(SignInSubmittedEvent(
              emailController.text.toString(), passwordController.text.toString() ));
        }},
      style:ButtonStyle(backgroundColor:MaterialStatePropertyAll(  
        (state is SignInValidState) ? Colors.blue : Colors.grey
      )),
         child: Text("sign up"));
      }))

       // when we give event then use... blocprovider.of<blocname>...add(event name).....and state will automatically emit
       // when we call state then we wrap with ... BlocBuilder

      ],),
    ),
    );
  }
}