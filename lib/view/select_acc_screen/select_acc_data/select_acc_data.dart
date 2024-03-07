// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';

class SelectAccData extends StatelessWidget {
  const SelectAccData({super.key, required this.title, required this.value});

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: TextStyle(
              color: ColorConstants.primaryBlack,
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
        Text(
          title,
          style: TextStyle(
              color: ColorConstants.primaryBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
