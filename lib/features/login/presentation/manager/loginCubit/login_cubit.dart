import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:product_viewer/core/utils/api_service.dart';
import 'package:product_viewer/features/login/presentation/manager/loginCubit/login_state.dart';

class LogInCubit extends Cubit<LogInStates>
{

  LogInCubit():super(LogInInitialState());

  String message ='';

  final formField =GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  void userLogIn({
    required String phone,
    required String name,
  }) {
    emit(LogInLoadingState());
    ApiPostModel.postData(
      endPoint: 'verifyPhone',
      body: {
        'phone': phone,
        'name': name,
      },
    ).then((value) {
      emit(LogInSuccessState());
      message = value.data['message'];

    }).catchError((error) {
      emit(LogInFailureState(error.toString()));
    });
  }
}