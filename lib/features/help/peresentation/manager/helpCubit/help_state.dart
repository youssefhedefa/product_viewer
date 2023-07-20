abstract class HelpStates{}


class HelpInitialState extends HelpStates{}

class HelpLoadingState extends HelpStates{}
class HelpSuccessState extends HelpStates{}
class HelpFailureState extends HelpStates{
  final String errMessage;

  HelpFailureState(this.errMessage);
}