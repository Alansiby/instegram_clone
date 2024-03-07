// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      this.buttonColour = ColorConstants.primaryBlue,
      this.haveBorder = false,
      this.textColour = ColorConstants.primaryWhite,
      this.onTap
      });

  final String text;
  final Color textColour;
  final Color buttonColour;
  final bool haveBorder;
  

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: buttonColour,
            borderRadius: BorderRadius.circular(5),
            border: haveBorder == true
                ? Border.all(
                    color: ColorConstants.primaryBlack.withOpacity(0.4))
                : null),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: textColour,
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
