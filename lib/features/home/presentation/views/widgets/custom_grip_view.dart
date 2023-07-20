import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:product_viewer/core/utils/my_routes.dart';
import 'package:product_viewer/features/home/presentation/manger/homeCubit/product_cubit.dart';
import 'package:product_viewer/features/home/presentation/manger/homeCubit/product_state.dart';
import 'customCard/custom_card.dart';

class CustomGripView extends StatelessWidget {
  const CustomGripView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit,ProductStates>(
      builder: (BuildContext context, state) {
        var homeCubit = BlocProvider.of<ProductCubit>(context);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: MasonryGridView.builder(
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: homeCubit.products!.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 40.w,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.only(top: 90.0.h),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        MyRoutes.kProductDetails,
                        arguments: homeCubit.products![index],
                      );
                    },
                    child: CustomCard(product: homeCubit.products![index] ),
                  ),
                );
              }
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      MyRoutes.kProductDetails,
                    arguments: homeCubit.products![index],
                  );
                },
                child: CustomCard(product: homeCubit.products![index]),
              );
            },
          ),
        );
      },
    );
  }
}
