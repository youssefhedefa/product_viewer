import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedText extends StatelessWidget {
  const RecommendedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 320.h),
      child: SizedBox(
        width: 190.w,
        child:const Text(
          'Recommended for You',
          style: TextStyle(
            color: Color(0xFF464646),
            fontSize: 30,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    )
    ;
  }
}
