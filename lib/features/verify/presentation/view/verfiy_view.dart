import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:product_viewer/core/utils/cach_helper.dart';
import 'package:product_viewer/core/utils/my_routes.dart';
import 'package:product_viewer/core/utils/widgets/global_button.dart';
import 'package:product_viewer/features/verify/presentation/manager/verifyCubit/verify_cubit.dart';
import 'package:product_viewer/features/verify/presentation/manager/verifyCubit/verify_state.dart';
import 'package:product_viewer/features/verify/presentation/view/widgets/keyboardPart/keyboard_part.dart';
import 'package:product_viewer/features/verify/presentation/view/widgets/upperPart/custom_resend_button.dart';
import 'package:product_viewer/features/verify/presentation/view/widgets/upperPart/numbers_row.dart';
import 'package:product_viewer/features/verify/presentation/view/widgets/upperPart/verify_text.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyCubit,VerifyStates>(
      builder: (BuildContext context, state) {
        var verifyCubit = BlocProvider.of<VerifyCubit>(context);
        return  Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 380.h,
                    decoration:const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xD80062BD), Color(0x000062BD)],
                      ),
                    ),
                    child:   Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const VerifyText(),
                        const NumbersRow(),
                        const CustomTextButton(),
                        GlobalButton(
                            text: 'verify',
                          onPressed: (){
                            verifyCubit.userVerify(code: verifyCubit.compileCode(), phone: CacheHelper.getPhone('phone')!);
                            Fluttertoast.showToast(
                              msg: verifyCubit.message,
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 4,
                              backgroundColor: Colors.blueAccent,
                              textColor: Colors.white,
                              fontSize: 16.0,);
                            if(state is VerifySuccessState){
                              Navigator.pushNamed(context, MyRoutes.kHelpView);
                            }
                          },
                        ),
                        //CustomButton(text: 'Verify',route: MyRoutes.kHelpView),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0.h,left: 68.w),
                  child:const KeyBoardPart(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
