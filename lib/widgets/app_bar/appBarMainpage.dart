// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget TopButton(String img) {
  return Container(
      height: 60,
      width: 55,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.9, color: Color(0xffE8E6EA))),
      child: SvgPicture.asset(
        img,
        width: 3,
      ));
}
