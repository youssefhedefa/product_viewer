import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:product_viewer/core/utils/api_service.dart';
import 'package:product_viewer/features/verify/presentation/manager/verifyCubit/verify_state.dart';

class VerifyCubit extends Cubit<VerifyStates>
{
  VerifyCubit():super(VerifyInitialState());

  String message ='';
  List<int>? numbers;


  TextEditingController textField1Controller = TextEditingController();
  TextEditingController textField2Controller = TextEditingController();
  TextEditingController textField3Controller = TextEditingController();
  TextEditingController textField4Controller = TextEditingController();


  String compileCode()
  {
    String text = textField1Controller.text+textField2Controller.text+textField3Controller.text+textField4Controller.text;
    return text;
  }

  void userVerify({
    required String code,
    required String phone,
  }) {
    emit(VerifyLoadingState());
    ApiPostModel.postData(
      endPoint: 'verifyPhone',
      body: {
        'code': code,
        'phone': phone,
      },
    ).then((value) {
      emit(VerifySuccessState());
      message = value.data['message'];
    }).catchError((error) {
      emit(VerifyFailureState(error.toString()));
    });
  }
}