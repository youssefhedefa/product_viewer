import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'number_item.dart';

class KeyBoardPart extends StatelessWidget {
  const KeyBoardPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220.h,
          child: GridView.builder(
            padding: const EdgeInsets.all(0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 18,
              mainAxisExtent: 100,
            ),
            itemBuilder: (context, index) => NumberItem(number: index+1),
            itemCount: 9,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5-77.w),
              child: const NumberItem(number: 0,),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 62.w),
              child: const Icon(Icons.backspace_outlined),
            )
          ],
        ),
      ],
    );
  }
}
