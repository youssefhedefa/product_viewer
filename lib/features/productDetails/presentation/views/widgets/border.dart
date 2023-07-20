import 'package:flutter/material.dart';

class SmallBorder extends StatelessWidget {
  const SmallBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 315,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Color(0xFFB1B1B1),
            ),
          ),
        ),
      ),
    );
  }
}

