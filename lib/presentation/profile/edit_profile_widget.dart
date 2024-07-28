import 'package:flutter/material.dart';

class CustomTextFieldWithIcon extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final IconData? icon;
  final TextEditingController? controller;
  final double width;
  final int? minlines;
  final int? maxlines;

  const CustomTextFieldWithIcon({
    Key? key,
    required this.labelText,
    this.hintText,
    this.icon,
    this.controller,
    this.width = double.infinity,
    this.minlines,
    this.maxlines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.pink),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.pink),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.pink),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.pink),
            ),
            suffixIcon: icon != null
                ? Icon(
                    icon,
                    color: Colors.grey,
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
