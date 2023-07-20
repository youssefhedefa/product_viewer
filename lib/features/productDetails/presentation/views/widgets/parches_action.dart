import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/my_routes.dart';
import '../../../../login/presentation/views/widgets/welcomeStack/custom_button.dart';

class ParchesAction extends StatelessWidget {
  const ParchesAction({Key? key, required this.price}) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 65,
      child:  ListTile(
        title: const Text(
          'Price',
          style: TextStyle(
            color: Color(0xFFB1B1B1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle:  Text(
          '$price EGP',
          style:const TextStyle(
            color: Color(0xFF464646),
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: SizedBox(
          height: 50.h,
          width: 160.w,
          child: const CustomButton(text: 'Add To Cart', route: MyRoutes.kProductDetails),),
      ),
    );
  }
}
