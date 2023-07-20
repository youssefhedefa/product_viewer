import 'package:flutter/cupertino.dart';
import 'package:product_viewer/core/utils/my_routes.dart';
import '../../../../core/utils/my_assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLogIn();

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(AssetsData.splashBackGround),
          fit: BoxFit.fill,
        ),
        Center(
          child: Image(
            image: AssetImage(AssetsData.splashBird),
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  void navigateToLogIn() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, MyRoutes.kLogIN);
      },
    );
  }
}
