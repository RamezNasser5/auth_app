import 'package:flutter/material.dart';

class CustomStarterTextField extends StatelessWidget {
  const CustomStarterTextField({
    super.key,
    required this.hintText,
    required this.onFieldSubmitted,
  });

  final String hintText;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: TextFormField(
        onChanged: onFieldSubmitted,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
          return null;
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
