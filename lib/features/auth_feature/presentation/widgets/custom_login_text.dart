import 'package:flutter/material.dart';

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
            style: const TextStyle(
              fontSize: 32,
              color: Color(0xff3A2F2F),
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            width: 320,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                text2,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xff704F47),
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
