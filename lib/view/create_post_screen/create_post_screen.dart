// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: 80,
            leading: TextButton(
              child: Text(
                "Cancel",
                style: TextStyle(
                    color: ColorConstants.primaryBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Rescents"),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
            titleTextStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: ColorConstants.primaryBlack),
          ),
        ));
  }
}
