import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Brand extends StatelessWidget {
  const Brand({Key? key, required this.category, required this.image}) : super(key: key);
  final String category;
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 46.h,
      decoration: ShapeDecoration(
        color:const Color(0xFF0062BD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadows:const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 8,
            offset: Offset(2, 2),
            spreadRadius: 4,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              child: Image(
                image: image,),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              category,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
