import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberItem extends StatefulWidget {
  const NumberItem({Key? key, required this.number}) : super(key: key);
  final int number;

  @override
  State<NumberItem> createState() => _NumberItemState();
}

class _NumberItemState extends State<NumberItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Text(
        widget.number.toString(),
        style: TextStyle(
          color: const Color(0xFF464646),
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
