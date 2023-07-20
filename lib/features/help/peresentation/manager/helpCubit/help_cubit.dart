import 'package:bloc/bloc.dart';
import 'package:product_viewer/core/utils/api_service.dart';
import 'package:product_viewer/features/help/peresentation/manager/helpCubit/help_state.dart';

class HelpCubit extends Cubit<HelpStates>
{
  HelpCubit() : super(HelpInitialState());

  List<dynamic>? helpQuestions = [];

  void fetchHelpQuestions() {
    emit(HelpLoadingState());
    ApiGetModel.getData(endPoint: 'getHelp')
        .then(
          (value) {
            helpQuestions = value.data['help'];
        emit(HelpSuccessState());
      },
    )
        .catchError(
          (e) {
        emit(HelpFailureState(e.toString()));
      },
    );
  }

}