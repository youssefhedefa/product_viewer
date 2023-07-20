
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/my_assets.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 160.0.h,
        width: 310.0.w,
        child: AnotherCarousel(
          images: [
            AssetImage(AssetsData.testBanner),
            AssetImage(AssetsData.splashBird),
            AssetImage(AssetsData.testBanner),
          ],
          dotBgColor: Colors.transparent,
          dotSize: 0,
          autoplayDuration: const Duration(seconds: 5),
        )
    );
  }
}
