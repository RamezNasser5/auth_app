import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({
    super.key,
    required this.textFieldText,
    required this.onPressed,
    required this.text,
    required this.onTap,
    this.isLoading = false,
  });

  final String textFieldText;
  final String text;
  final void Function()? onPressed;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MaterialButton(
          height: 50,
          minWidth: 350,
          onPressed: onPressed,
          color: const Color(0xff3A2F2F),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  textFieldText,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff704F47),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xff704F47),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
