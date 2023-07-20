import 'package:flutter/material.dart';

class CustomOrRow extends StatelessWidget {
  const CustomOrRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1,
          width: 160,
          color: const Color(0xff639FD7),
        ),
        const Text(
          'OR',
          style: TextStyle(
            color: Color(0x9B0062BD),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          height: 1,
          width: 160,
          color: const Color(0xff639FD7),
        ),
      ],
    );
  }
}
