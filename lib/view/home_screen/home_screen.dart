// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/image_constants.dart';
import 'package:instegram_clone/dummy_db.dart';
import 'package:instegram_clone/view/home_screen/widgets/custom_postcard.dart';
import 'package:instegram_clone/view/home_screen/widgets/story_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black54,
        ),
        title: Image.asset(
          ImageConstants.appIconTextpng,
          scale: 1.5,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tv,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    DummyDb.storyList.length,
                    (index) => StoryAvatar(
                        profilePic: DummyDb.storyList[index]["profilePic"],
                        userName: DummyDb.storyList[index]["userName"],
                        isLive: DummyDb.storyList[index]["isLive"])),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DummyDb.homePostsList.length,
                itemBuilder: (context, index) => CustomPostCard(
                      userName:
                          DummyDb.homePostsList[index]["userName"].toString(),
                      proPic: DummyDb.homePostsList[index]["proPic"].toString(),
                      location:
                          DummyDb.homePostsList[index]["location"].toString(),
                      posts: DummyDb.homePostsList[index]["posts"],
                      isLike: DummyDb.homePostsList[index]["isLiked"],
                      caption:
                          DummyDb.homePostsList[index]["caption"].toString(),
                    ))
          ],
        ),
      ),
    );
  }
}
