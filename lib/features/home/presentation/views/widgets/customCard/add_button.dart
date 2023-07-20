import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 40,
        height: 40,
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.77, -0.64),
            end: Alignment(-1, 1),
            colors: [Color(0xFF0062BD), Color(0x000062BD)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.plus,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
