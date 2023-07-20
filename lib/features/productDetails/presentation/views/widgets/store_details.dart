import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/my_assets.dart';

class StoreDetails extends StatelessWidget {
  const StoreDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 65,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows:const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 5,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows:const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 5,
                  )
                ],
              ),
              child:Image(image: AssetImage(AssetsData.acerTest),) ,
            ),
          ),
          const SizedBox(width: 10,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Acer Official Store',
                style: TextStyle(
                  color: Color(0xFF464646),
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'View Store',
                style: TextStyle(
                  color: Color(0xFFB1B1B1),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              width: 28.w,
              height: 28.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 5,
                    offset: Offset(2, 2),
                    spreadRadius: 5,
                  )
                ],

              ),
              child:const Icon(Icons.arrow_forward_ios_outlined,),
            ),
          ),

        ],
      ),
    );
  }
}
