import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, this.onPressed, required this.text}) : super(key: key);

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: 266.w,
        height: 40.h,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            end: Alignment(1.00, 0.00),
            begin: Alignment(-1, 0),
            colors: [Color(0xFF0062BD), Color(0x7F0062BD), Color(0x440062BD)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Verify',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    )
    ;
  }
}
