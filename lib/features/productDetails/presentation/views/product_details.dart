import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/border.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/custom_app_bar.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/description.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/description_text.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/lap_image.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/other_image.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/parches_action.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/product_name.dart';
import 'package:product_viewer/features/productDetails/presentation/views/widgets/store_details.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key, required this.product}) : super(key: key);

  final Map<String,dynamic> product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 380.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xD80062BD), Color(0x000062BD)],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 34.w, left: 16.0.w,right: 16.w),
              child:  SingleChildScrollView(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppBarProductDetails(),
                    const SizedBox(
                      height: 16,
                    ),
                    ProductName(
                      productName: product['name'] ,
                      productType: product['type'],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    LapImage(
                      image: product['image'],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Align(
                      alignment: Alignment.center,
                        child: OtherImages(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const StoreDetails(),
                    const SizedBox(
                      height: 20,
                    ),
                    ParchesAction(
                      price: product['price'],
                    ),
                    const SizedBox(height: 28,),
                    const SmallBorder(),
                    const SizedBox(height: 28,),
                    const CustomSectionSelection(),
                    const SizedBox(height: 40,),
                    DescriptionText(
                      desc: product['description'],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

