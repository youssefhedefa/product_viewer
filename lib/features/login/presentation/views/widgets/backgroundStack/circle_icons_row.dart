import 'package:flutter/material.dart';

import '../../../../../../core/utils/my_assets.dart';
import 'custom_circle_avatar.dart';

class CustomCircleIcons extends StatelessWidget {
  const CustomCircleIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(
        children: [
          CustomCircleAvatar(logo: AssetsData.facebook),
          const Spacer(),
          CustomCircleAvatar(logo: AssetsData.google,),
          const Spacer(),
          CustomCircleAvatar(logo: AssetsData.ios,),
        ],

      ),
    );
  }
}
