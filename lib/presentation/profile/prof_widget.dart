// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final IconData firstIcon;
  final String text;
  final IconData? secondIcon;
  final VoidCallback? onPressed;

  const CustomWidget({
    Key? key,
    required this.firstIcon,
    required this.text,
    this.secondIcon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink[50],
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    firstIcon,
                    color: Colors.pink,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Text(
                text,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              if (secondIcon != null)
                Icon(
                  secondIcon,
                  size: 18.0,
                  color: Colors.pink,
                ),
            ],
          ),
          SizedBox(height: 15.0),
          Divider(
            color: Colors.grey.shade200,
            height: 1.0,
            thickness: 1.0,
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
