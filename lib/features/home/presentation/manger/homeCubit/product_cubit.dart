import 'package:bloc/bloc.dart';
import 'package:product_viewer/core/utils/api_service.dart';
import 'package:product_viewer/features/home/presentation/manger/homeCubit/product_state.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(ProductInitialState());

  List<dynamic>? products = [];

  void fetchProducts() {
    emit(ProductLoadingState());
    ApiGetModel.getData(endPoint: 'getProducts')
        .then(
          (value) {
            products = value.data['products'];
            emit(ProductSuccessState());
          },
        )
        .catchError(
          (e) {
            emit(ProductFailureState(e.toString()));
          },
        );
  }
}
