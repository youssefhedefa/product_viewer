
abstract class VerifyStates{}


class VerifyInitialState extends VerifyStates{}

class VerifyLoadingState extends VerifyStates{}
class VerifySuccessState extends VerifyStates{}
class VerifyFailureState extends VerifyStates{
  final String errMessage;
  VerifyFailureState(this.errMessage);
}