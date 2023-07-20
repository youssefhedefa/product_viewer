import 'package:flutter/material.dart';

import '../../../../../../core/utils/my_assets.dart';
import 'icons_platte.dart';

class BackgroundStack extends StatelessWidget {
  const BackgroundStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(AssetsData.logInBackGround),
        ),
        const IconsPlatte(),
      ],
    );
  }
}
