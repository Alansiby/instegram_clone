// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';

class SearchCatagoryCard extends StatelessWidget {
  const SearchCatagoryCard({
    super.key,
    this.icon,
  });
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border:
              Border.all(color: ColorConstants.primaryBlack.withOpacity(0.1))),
      child: Row(
        children: [
          Icon != null ? Icon(icon) : SizedBox(),
          SizedBox(
            width: 6,
          ),
          Text("Data"),
        ],
      ),
    );
  }
}
