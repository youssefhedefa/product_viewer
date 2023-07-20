import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/core/utils/cach_helper.dart';
import 'package:product_viewer/core/utils/my_routes.dart';
import 'package:product_viewer/features/login/presentation/manager/loginCubit/login_cubit.dart';
import 'package:product_viewer/features/login/presentation/manager/loginCubit/login_state.dart';
import 'custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WelcomeBoard extends StatelessWidget {
  const WelcomeBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit,LogInStates>(
      builder: (context,state)
      {
        var loginCubit = BlocProvider.of<LogInCubit>(context);
        return  Padding(
          padding: EdgeInsets.only(top: 150.0.h),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width - 60.w,
              height: 250.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(40),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(2, 5),
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Form(
                key: loginCubit.formField,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0.h),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            color: const Color(0xFF464646),
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 140.w,
                      color: const Color(0xB70062BD),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomTextField(
                      hint: 'Enter Your Full Name',
                      keyboardType: TextInputType.text,
                      controller: loginCubit.nameController,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextField(
                      hint: 'Enter your Phone Number',
                      keyboardType: TextInputType.phone,
                      controller: loginCubit.phoneController,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    TextButton(
                      onPressed: () {
                        if(loginCubit.formField.currentState!.validate())
                        {
                          loginCubit.userLogIn(phone: loginCubit.phoneController.text.toString(), name: loginCubit.nameController.text.toString());
                          Fluttertoast.showToast(
                              msg: loginCubit.message,
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 4,
                              backgroundColor: Colors.blueAccent,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                          if(state is LogInSuccessState)
                          {
                            CacheHelper.setPhone('phone', loginCubit.phoneController.text);
                            Navigator.pushNamed(context, MyRoutes.kVerifyView);
                          }

                        }

                      },
                      child: Container(
                        width: 266.w,
                        height: 40.h,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            end: Alignment(1.00, 0.00),
                            begin: Alignment(-1, 0),
                            colors: [Color(0xFF0062BD), Color(0x7F0062BD), Color(0x440062BD)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //const CustomButton(text: 'Login',route: MyRoutes.kVerifyView),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
