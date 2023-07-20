import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/core/utils/my_assets.dart';

import 'brand_item.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> brand = ['All','Acer','Razer','Apple'];
    final List<dynamic> images = [
      AssetImage(AssetsData.allIcon),
      AssetImage(AssetsData.acerIcon),
      AssetImage(AssetsData.razerIcon),
      AssetImage(AssetsData.appleIcon),
    ];
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(end: 18.0.w),
          child: Brand(
            category: brand[index],
            image: images[index],
          ),
        ),
        itemCount: brand.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
