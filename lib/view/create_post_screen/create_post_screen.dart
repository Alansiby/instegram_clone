// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/view/create_post_screen/tabs/lib_tab.dart';
import 'package:instegram_clone/view/create_post_screen/tabs/photo_tab.dart';

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
          centerTitle: true,
          actions: [
            TextButton(
              child: Text(
                "Next",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.primaryBlue),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/8438918/pexels-photo-8438918.jpeg?auto=compress&cs=tinysrgb&w=600"))),
              height: 375,
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.all_inclusive,
                      size: 25,
                      color: ColorConstants.primaryGrey,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.space_dashboard_outlined,
                      size: 25,
                      color: ColorConstants.primaryGrey,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_none,
                          size: 25,
                          color: ColorConstants.primaryGrey,
                        ),
                        SizedBox(width: 16),
                        Text(
                          "Select Multiple",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.primaryWhite),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [LibaryTab(), PhotoTab(), LibaryTab()],
            ))
          ],
        ),
        bottomNavigationBar: TabBar(
            indicatorWeight: 1,
            dividerHeight: 0,
            labelColor: ColorConstants.primaryBlack,
            unselectedLabelColor: ColorConstants.primaryBlack.withOpacity(0.6),
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                text: "Libary",
              ),
              Tab(
                text: "Photo",
              ),
              Tab(
                text: "Video",
              ),
            ]),
      ),
    );
  }
}
