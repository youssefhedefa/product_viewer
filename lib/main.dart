import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/core/utils/my_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_viewer/features/login/presentation/manager/loginCubit/login_cubit.dart';
import 'package:product_viewer/features/verify/presentation/manager/verifyCubit/verify_cubit.dart';
import 'bloc_observer.dart';
import 'core/utils/api_service.dart';
import 'core/utils/cach_helper.dart';
import 'features/help/peresentation/manager/helpCubit/help_cubit.dart';
import 'features/home/presentation/manger/homeCubit/product_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  ApiGetModel.init();
  ApiPostModel.init();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductCubit>(
          create: (context) => ProductCubit(
          )..fetchProducts(),
        ),
        BlocProvider<HelpCubit>(
          create: (context) => HelpCubit(
          )..fetchHelpQuestions(),
        ),
        BlocProvider<LogInCubit>(
          create: (context)=> LogInCubit(),
        ),
        BlocProvider<VerifyCubit>(
          create: (context)=> VerifyCubit(),
        ),

      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Product Viewer',
            onGenerateRoute: MyRoutes.generateRoute,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
              useMaterial3: true,
            ),
            initialRoute: '/',
          );
        },
      ),
    );
  }
}
