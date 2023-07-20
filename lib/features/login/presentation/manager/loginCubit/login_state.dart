
abstract class LogInStates{}


class LogInInitialState extends LogInStates{}

class LogInLoadingState extends LogInStates{}
class LogInSuccessState extends LogInStates{}
class LogInFailureState extends LogInStates{
  final String errMessage;
  LogInFailureState(this.errMessage);
}