import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/my_assets.dart';
import 'image_item.dart';

class OtherImages extends StatelessWidget {
  const OtherImages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<dynamic> images = [
      AssetImage(AssetsData.testLap0),
      AssetImage(AssetsData.testLap1),
      AssetImage(AssetsData.testLap2),
    ];
    return SizedBox(
      height: 90.h,
      child: ListView.separated(
        itemBuilder: (context, index) => ImageItem(image: images[index]),
        separatorBuilder: (context, index) => const SizedBox(
          width: 16,
        ),
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
