
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductName extends StatelessWidget {
  const ProductName({Key? key, required this.productName, required this.productType}) : super(key: key);

  final String productName;
  final String productType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'Type: $productType',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
