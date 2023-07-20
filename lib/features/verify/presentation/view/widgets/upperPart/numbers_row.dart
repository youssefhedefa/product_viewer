import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/features/verify/presentation/manager/verifyCubit/verify_cubit.dart';
import 'package:product_viewer/features/verify/presentation/manager/verifyCubit/verify_state.dart';
import 'number_box.dart';

class NumbersRow extends StatelessWidget {
 const  NumbersRow({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyCubit,VerifyStates>(
      builder: (context,state)
      {
        var verifyCubit = BlocProvider.of<VerifyCubit>(context);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.w),
          child: SizedBox(
            height: 56.h,
            // child: ListView.separated(
            //   itemBuilder: (
            //       context, index) =>const NumberBox(),
            //   itemCount: 4,
            //   physics: const NeverScrollableScrollPhysics(),
            //   scrollDirection: Axis.horizontal,
            //   separatorBuilder: (BuildContext context, int index)
            //   {
            //     return const SizedBox(width: 20,);
            //   },
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberBox(controller: verifyCubit.textField1Controller),
                NumberBox(controller: verifyCubit.textField2Controller),
                NumberBox(controller: verifyCubit.textField3Controller),
                NumberBox(controller: verifyCubit.textField4Controller),
              ],
            ),
          ),
        ) ;
      } ,
    ) ;
  }
}
