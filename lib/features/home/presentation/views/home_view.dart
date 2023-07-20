import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/banner.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/brand_list.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/custom_bottom_bar.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/custom_floating_action_button.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/custom_grip_view.dart';
import 'package:product_viewer/features/home/presentation/views/widgets/recommended_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:const CustomBottomBar(),

      floatingActionButton:const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const CustomAppBar(),
                              SizedBox(
                                height: 14.h,
                              ),
                              const CustomBanner(),
                              SizedBox(
                                height: 10.h,
                              ),
                              const Brands(),
                              SizedBox(
                                height: 20.h,
                              ),
                              const CustomGripView(),
                            ],
                          ),
                          const RecommendedText(),
                        ],
                      ),
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



