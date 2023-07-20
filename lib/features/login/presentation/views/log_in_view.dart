import 'package:flutter/material.dart';
import 'package:product_viewer/features/login/presentation/views/widgets/backgroundStack/background_stack.dart';
import 'package:product_viewer/features/login/presentation/views/widgets/welcomeStack/welcome_board.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BackgroundStack(),
          WelcomeBoard(),
        ],
      ),
    );
  }
}



