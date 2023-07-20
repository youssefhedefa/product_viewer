import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        padding: const EdgeInsets.only(left: 8),
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.suit_heart,
        ),
      ),
    );
  }
}
