import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      backgroundColor: Colors.transparent,
      onPressed: () {},
      child: Container(
        width: 56.w,
        height: 56.h,
        decoration: const ShapeDecoration(
          color: Color(0xFF0062BD),
          shape: OvalBorder(),
        ),
        child: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.home,color: Colors.white,),
        ),
      ),
    );
  }
}
