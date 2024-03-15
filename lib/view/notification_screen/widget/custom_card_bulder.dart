// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/view/notification_screen/widget/custom_notification_card.dart';

class CustomCardBulder extends StatelessWidget {
  const CustomCardBulder({
    super.key,
    required this.itemCount,
  });
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: ColorConstants.primaryBlack.withOpacity(0.1)))),
      padding: EdgeInsets.only(left: 16, right: 16, top: 13),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children:
                List.generate(itemCount, (index) => CustomNotificationCard()),
          )
        ],
      ),
    );
  }
}
