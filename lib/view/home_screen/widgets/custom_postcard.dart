// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';

class CustomPostCard extends StatefulWidget {
  const CustomPostCard({
    super.key,
    required this.proPic,
    required this.userName,
    required this.location,
    required this.posts,
    this.isLike = false,
    this.caption,
  });

  final String proPic;
  final String userName;
  final String location;
  final List<String> posts;
  final bool isLike;
  final String? caption;

  @override
  State<CustomPostCard> createState() => _CustomPostCardState();
}

class _CustomPostCardState extends State<CustomPostCard> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(widget.proPic),
            ),
            title: Row(
              children: [
                Text(
                  widget.userName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.verified,
                  size: 15,
                  color: ColorConstants.normalaBlue,
                )
              ],
            ),
            subtitle: Text(
              widget.location,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Stack(
            children: [
              SizedBox(
                height: 375,
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentPage = value + 1;
                    setState(() {});
                  },
                  itemCount: widget.posts.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.posts[index]))),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryBlack.withOpacity(.6),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "$currentPage/${widget.posts.length}",
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        widget.isLike == true
                            ? Icon(
                                Icons.favorite_rounded,
                                size: 25,
                                color: ColorConstants.normalred,
                              )
                            : Icon(Icons.favorite_border, size: 25),
                        SizedBox(width: 16),
                        Icon(Icons.maps_ugc_rounded, size: 25),
                        SizedBox(width: 16),
                        Icon(Icons.send, size: 25),
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          widget.posts.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: CircleAvatar(
                                  backgroundColor: (index == currentPage - 1)
                                      ? ColorConstants.primaryBlue
                                      : Colors.grey.withOpacity(.3),
                                  radius: (index == currentPage - 1) ? 5 : 3,
                                ),
                              )),
                    )),
                    Icon(Icons.bookmark_border, size: 25),
                  ],
                ),
                SizedBox(
                  height: 13.5,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.proPic),
                      radius: 10,
                    ),
                    SizedBox(width: 16),
                    RichText(
                        text: TextSpan(
                            text: "Liked by ",
                            style:
                                TextStyle(color: ColorConstants.primaryBlack),
                            children: [
                          TextSpan(
                            text: "user_name ",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "and "),
                          TextSpan(
                            text: "56,7 others ",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ],
                ),
                SizedBox(height: 13.5),
                RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: widget.userName,
                        style: TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "${widget.caption}" ?? "",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.normal),
                          )
                        ])),
                SizedBox(height: 13.5),
                Text(
                  "January 2",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(.5),
                      fontSize: 11,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
