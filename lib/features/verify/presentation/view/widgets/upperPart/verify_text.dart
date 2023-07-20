import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyText extends StatelessWidget {
  const VerifyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 42.0.h),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Verify Phone',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
