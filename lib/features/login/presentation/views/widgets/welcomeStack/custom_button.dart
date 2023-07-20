import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.route}) : super(key: key);
  final String text;
  final String route;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 266.w,
        height: 40.h,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            end: Alignment(1.00, 0.00),
            begin: Alignment(-1, 0),
            colors: [Color(0xFF0062BD), Color(0x7F0062BD), Color(0x440062BD)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
