abstract class SignInState{}

class SignInInitialState extends SignInState{}

class SignInValidState extends SignInState{}

class SignInErrorState extends SignInState{
  final String errorMassage;
  SignInErrorState(this.errorMassage);
}

class SignInloadingState extends SignInState{}