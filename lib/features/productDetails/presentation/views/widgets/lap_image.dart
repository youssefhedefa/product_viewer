import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LapImage extends StatelessWidget {
  const LapImage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 240.h,
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
        width: 220.w,
        height: 180.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            //image: AssetImage(AssetsData.testLap),
            //fit: BoxFit.fill,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}
