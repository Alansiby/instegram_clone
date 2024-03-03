// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';

class StoryAvatar extends StatelessWidget {
  const StoryAvatar(
      {super.key,
      required this.profilePic,
      required this.userName,
      this.isLive = false});
  final bool isLive;
  final String profilePic;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                height: 110,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      end: Alignment.bottomRight,
                      colors: [
                        ColorConstants.normalred,
                        ColorConstants.normalaBlue,
                        ColorConstants.normalYellow
                      ],
                    )),
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryGrey,
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profilePic),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: isLive == true
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  ColorConstants.primaryPink,
                                  ColorConstants.normalred
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 4, color: ColorConstants.primaryWhite)),
                        child: Center(
                          child: Text(
                            "Live",
                            style: TextStyle(
                                color: ColorConstants.primaryWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : SizedBox(),
              )
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Text(userName)
        ],
      ),
    );
  }
}
