import 'package:flutter/material.dart';

class CustomSectionSelection extends StatelessWidget {
  const CustomSectionSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Text(
              'Overview',
              style: TextStyle(
                color: Color(0xFF464646),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              width: 8,
              height: 8,
              decoration: const ShapeDecoration(
                color: Color(0xFF0062BD),
                shape: OvalBorder(),
              ),
            )
          ],
        ),
        const Text(
          'Specification',
          style: TextStyle(
            color: Color(0xFFB1B1B1),
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          'Review',
          style: TextStyle(
            color: Color(0xFFB1B1B1),
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
