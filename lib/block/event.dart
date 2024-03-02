//only single event can give thats why we creat abstract class so that we can creat multiple model classes/events,
//and extend the property of abstract class to that model classes/events
abstract class SignInEvent{}

class SignInTextChangeEvent extends SignInEvent{
  final String emailValue;
    final String passwordValue;
  SignInTextChangeEvent(this.emailValue,this.passwordValue);
}

class SignInSubmittedEvent extends SignInEvent {
  final String email;
  final String password;
  SignInSubmittedEvent(this.email,this.password);
}