import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){},
        child: const Text(
          'Resend Code',
          style: TextStyle(
            color: Color(0xFF0062BD),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        )
    );
  }
}
