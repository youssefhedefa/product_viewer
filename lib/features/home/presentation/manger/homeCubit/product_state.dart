
abstract class ProductStates{}


class ProductInitialState extends ProductStates{}

class ProductLoadingState extends ProductStates{}
class ProductSuccessState extends ProductStates{}
class ProductFailureState extends ProductStates{
  final String errMessage;

  ProductFailureState(this.errMessage);
}