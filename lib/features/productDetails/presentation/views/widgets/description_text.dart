import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key, required this.desc}) : super(key: key);

  final String desc;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 361,
      height: 392,
      child: Text(
          desc,
        style:const TextStyle(
          color: Color(0xFFB1B1B1),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
