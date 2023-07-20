import 'package:flutter/material.dart';
import 'package:product_viewer/features/splash/views/splash_view.dart';
import '../../features/help/peresentation/view/help_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/login/presentation/views/log_in_view.dart';
import '../../features/productDetails/presentation/views/product_details.dart';
import '../../features/verify/presentation/view/verfiy_view.dart';

class MyRoutes {
  static const kLogIN = '/LogIn';
  static const kHomeView = '/Home';
  static const kVerifyView = '/verify';
  static const kHelpView = '/help';
  static const kProductDetails = '/productDetails';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashView(),);
      case kHomeView:
        return MaterialPageRoute(builder: (context) => const HomeView(),);
      case kLogIN:
        return MaterialPageRoute(builder: (context) => const LogInView(),);
      case kVerifyView:
        return MaterialPageRoute(builder: (context) => const VerifyView(),);
      case kHelpView:
        return MaterialPageRoute(builder: (context) => const HelpView(),);
      case kProductDetails:
        var arg = settings.arguments as Map<String,dynamic>;
        return MaterialPageRoute(builder: (context) => ProductDetailsView(product: arg),);

    }




    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }
}
