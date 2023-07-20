import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.validator, this.onSaved, this.keyboardType, required this.hint, this.controller}) : super(key: key);

  final String hint;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 266.w,
      height: 40.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 8,
            offset: Offset(2, 2),
            spreadRadius: 2,
          )
        ],
      ),
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(

          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
        validator: (value){
          if(value == '')
          {
            return 'this field is require';
          }
          return null;
        },
        onSaved: onSaved,
        keyboardType: keyboardType,
        controller: controller,
        cursorColor: Colors.blue,


      ),
    );
  }
}
