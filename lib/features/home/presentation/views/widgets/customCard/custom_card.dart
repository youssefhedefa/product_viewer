import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/customCard/product_details.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/customCard/product_image.dart';
import 'add_button.dart';
import 'card_background.dart';
import 'favourite_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.product}) : super(key: key);
  final Map<String,dynamic> product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 200.h,
      child:  Stack(
        children: [
          const CardBackGround(),
          ProductImage(imagePath: product['image']),
          const FavouriteButton(),
          ProductDetails(
            company: product['company'],
            name: product['name'],
            price: product['price'],
          ),
          const AddButton(),
        ],
      ),
    );
  }
}





