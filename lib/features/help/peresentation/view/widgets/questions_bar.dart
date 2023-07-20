import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnswerToggle extends StatefulWidget {
  const AnswerToggle({Key? key, required this.question, required this.answer}) : super(key: key);
  final String question;
  final String answer;
  @override
  State<AnswerToggle> createState() => _AnswerToggleState();
}

class _AnswerToggleState extends State<AnswerToggle> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: _toggleVisibility,
            child: Row(
              children: [
                Text(
                  widget.question,
                  style: TextStyle(
                    color: const Color(0xFF0062BD),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                _isVisible == false
                    ?const Icon(Icons.arrow_drop_down)
                    :const Icon(Icons.arrow_drop_up),
              ],
            ),
          ),
          Visibility(
            visible: _isVisible,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Text(
                widget.answer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
