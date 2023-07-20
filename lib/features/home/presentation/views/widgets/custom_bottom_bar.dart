import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.exit_to_app),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notification_add),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
