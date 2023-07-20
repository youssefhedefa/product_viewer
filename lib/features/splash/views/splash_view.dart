import 'package:flutter/material.dart';
import 'package:product_viewer/features/splash/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(37, 98, 190, 1),
      body: SplashViewBody(),
    );
  }
}
