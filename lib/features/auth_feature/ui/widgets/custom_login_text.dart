import 'package:auth_app/core/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomLoginText extends StatelessWidget {
  const CustomLoginText({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0),
      child: Column(
        children: [
          Text(
            text1,
            style: AppStyle.poppinsStyle32,
          ),
          SizedBox(
            width: 320,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.06),
              child: Text(
                text2,
                style: AppStyle.poppinsStyle13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
