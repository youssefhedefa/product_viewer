import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key, required this.image}) : super(key: key);
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.w,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 5,
          )
        ],
      ),
      child: Container(
        width: 40.w,
        height: 30.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
          ),
        ),
      ),
    );
  }
}
