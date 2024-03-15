// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/global_widgets/custom_button.dart';

class CustomNotificationCard extends StatefulWidget {
  const CustomNotificationCard({super.key});

  @override
  State<CustomNotificationCard> createState() => _CustomNotificationCardState();
}

class _CustomNotificationCardState extends State<CustomNotificationCard> {
  @override
  Widget build(BuildContext context) {
    List profileImage = ["", ""];
    bool isFollow = true;
    bool isAlredyFollowing = true;
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          profileImage.length < 2
              ? CircleAvatar(
                  radius: 22,
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                    ),
                    CircleAvatar(
                      radius: 16,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: ColorConstants.primaryWhite,
                          child: CircleAvatar(
                            radius: 16,
                          ),
                        ))
                  ],
                ),
          SizedBox(
            width: 12,
          ),
          Expanded(
              child: Text(
            "Al_an_si_by Liked Your photo. Now ",
            maxLines: 3,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
          )),
          SizedBox(
            width: 20,
          ),
          isFollow
              ? CustomButton(
                  hirizontalPadding: 20,
                  verticalPadding: 5,
                  text: isAlredyFollowing ? "Message" : "Follow",
                  buttonColour: isAlredyFollowing
                      ? Colors.transparent
                      : ColorConstants.normalaBlue,
                  textColour: isAlredyFollowing
                      ? ColorConstants.primaryBlack
                      : ColorConstants.primaryWhite,
                  haveBorder: isAlredyFollowing,
                )
              : Container(
                  height: 44,
                  width: 44,
                  color: Colors.red,
                )
        ],
      ),
    );
  }
}
