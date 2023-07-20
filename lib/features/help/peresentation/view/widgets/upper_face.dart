import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/core/utils/my_routes.dart';
import 'package:product_viewer/features/help/peresentation/manager/helpCubit/help_state.dart';
import 'package:product_viewer/features/help/peresentation/view/widgets/questions_bar.dart';
import 'package:product_viewer/features/login/presentation/views/widgets/welcomeStack/custom_button.dart';

import '../../manager/helpCubit/help_cubit.dart';

class UpperFace extends StatelessWidget {
  const UpperFace({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpCubit,HelpStates>(
      builder: (BuildContext context, state) {
        var helpCubit = BlocProvider.of<HelpCubit>(context);
        return Container(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(top: 42.0.h, left: 10.w, right: 10.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Help',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>  AnswerToggle(
                      question: helpCubit.helpQuestions![index]['question'],
                      answer:
                      helpCubit.helpQuestions![index]['answer'],),
                    separatorBuilder: (context,index)=>  SizedBox(
                      height: 20.h,
                    ),
                    itemCount: helpCubit.helpQuestions!.length,
                  ),
                  SizedBox(height: 160.h,),
                  const CustomButton(text: 'Continue', route: MyRoutes.kHomeView)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
