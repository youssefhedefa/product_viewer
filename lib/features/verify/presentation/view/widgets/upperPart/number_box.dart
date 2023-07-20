import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberBox extends StatelessWidget {
  const NumberBox({Key? key, this.controller, }) : super(key: key);
final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows:const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 20,
            offset: Offset(2, 5),
            spreadRadius: 5,
          )
        ],
      ),
      child:  TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.phone,
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none,),
        ),
      ),
    );
  }
}
