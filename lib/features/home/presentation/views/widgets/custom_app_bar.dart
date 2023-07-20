import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_search_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:34.w,),
      child: Row(
        children: [
          Expanded(
            child:  SizedBox(
              height: 48.h ,
              child: const CustomTextField(),),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 42.h ,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              shadows:const [
                BoxShadow(
                  color: Color(0x66000000),
                  blurRadius: 8,
                  offset: Offset(2, 2),
                  spreadRadius: 3,
                )
              ],
            ),
            child: IconButton(
              onPressed: () {},
              icon:const Icon(Icons.filter_alt_sharp),
            ),
          )
        ],
      ),
    );
  }
}
