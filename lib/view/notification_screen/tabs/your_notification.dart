// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/view/notification_screen/widget/custom_card_bulder.dart';

class YourNotification extends StatefulWidget {
  const YourNotification({super.key});

  @override
  State<YourNotification> createState() => _YourNotificationState();
}

class _YourNotificationState extends State<YourNotification> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: ColorConstants.primaryBlack.withOpacity(0.1)))),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Text("Follow Request"),
          ),
          Column(
            children: List.generate(10, (index) => CustomCardBulder(itemCount : index +1)),
          )
        ],
      ),
    );
  }
}
