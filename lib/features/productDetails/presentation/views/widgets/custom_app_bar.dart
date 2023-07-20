import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarProductDetails extends StatelessWidget {
  const CustomAppBarProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 46.w,
          height: 46.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 5,
                offset: Offset(2, 2),
                spreadRadius: 5,
              )
            ],

          ),
          child:IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
              icon: const Icon(Icons.arrow_back_ios_new_rounded,)),
        ),
      ],
    );
  }
}
