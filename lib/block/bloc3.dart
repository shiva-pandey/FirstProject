
// get bloc package in ymal file ; get email_validator package in ymal file,


import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState>{
 
 SignInBloc() : super(SignInInitialState()){

on<SignInTextChangeEvent>((event, emit) {
// if event.emailvalue of text field is empty and false then emit a state "..."
  if(  EmailValidator.validate(event.emailValue) == false){
    emit (  SignInErrorState("plese enter a valid e-mail")   );
  }else if(event.passwordValue.length < 8 ){
    emit (SignInErrorState("plese enter valid password"));
  }else{ 
    emit (SignInValidState());
  }
  
},);

    on<SignInSubmittedEvent>((event, emit) {
  emit(SignInloadingState());
},);
// creat class and extends with bloc and give super constrector ; then give events and emit state


 }

}