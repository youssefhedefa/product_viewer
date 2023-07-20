import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'circle_icons_row.dart';
import 'or_row.dart';

class IconsPlatte extends StatelessWidget {
  const IconsPlatte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height*0.65,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60),
            topLeft: Radius.circular(60),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Column(
            children: [
              Expanded(child: SizedBox(height: 340.h,),),
              const CustomOrRow(),
              SizedBox(height: 66.h,),
              const CustomCircleIcons(),
              SizedBox(height: 90.h,),
            ],
          ),
        ),
      ),
    )
    ;
  }
}
