// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/dummy_db.dart';
import 'package:instegram_clone/global_widgets/custom_button.dart';
import 'package:instegram_clone/view/select_acc_screen/select_acc_data/select_acc_data.dart';

class SelectAccScreen extends StatefulWidget {
  const SelectAccScreen({super.key});

  @override
  State<SelectAccScreen> createState() => _SelectAccScreenState();
}

class _SelectAccScreenState extends State<SelectAccScreen> {
  var currentTagIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Al_an_Si_by"),
              Icon(Icons.keyboard_arrow_down_rounded),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.add),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 48,
                          backgroundColor:
                              ColorConstants.primaryBlack.withOpacity(.1),
                          child: CircleAvatar(
                              radius: 46,
                              backgroundColor: ColorConstants.primaryWhite,
                              child: CircleAvatar(
                                radius: 43,
                                backgroundColor: ColorConstants.primaryBlack,
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/20230202/pexels-photo-20230202/free-photo-of-an-old-camera-sitting-on-top-of-a-newspaper.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                              )),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SelectAccData(
                                title: "Posts",
                                value: "3",
                              ),
                              SelectAccData(title: "Followers", value: "758"),
                              SelectAccData(title: "Following", value: "76"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Alan Siby P",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        "I am Not Gone To Change."
                        "Always Smile"),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: "         Edit Profile         ",
                          haveBorder: true,
                          buttonColour: Color.fromARGB(255, 60, 56, 56),
                          textColour: ColorConstants.primaryWhite,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomButton(
                          text: "       Share Profile      ",
                          haveBorder: true,
                          buttonColour: Color.fromARGB(255, 60, 56, 56),
                          textColour: ColorConstants.primaryWhite,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor:
                                    ColorConstants.primaryBlack.withOpacity(.1),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: ColorConstants.primaryWhite,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Row(
                            children: List.generate(
                              1,
                              (index) => Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 32,
                                      backgroundColor: ColorConstants
                                          .primaryBlack
                                          .withOpacity(.1),
                                      child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor:
                                              ColorConstants.primaryWhite,
                                          child: CircleAvatar(
                                            radius: 28,
                                            backgroundColor:
                                                ColorConstants.primaryBlack,
                                            backgroundImage: NetworkImage(
                                                "https://images.pexels.com/photos/20424751/pexels-photo-20424751/free-photo-of-two-women-are-sitting-on-the-grass-taking-pictures.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "**Days**",
                                      style: TextStyle(
                                          color: ColorConstants.primaryBlack,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 0,
              ),
              TabBar(
                  indicatorWeight: 1,
                  dividerHeight: 0,
                  indicatorColor: ColorConstants.primaryBlack,
                  labelColor: ColorConstants.primaryBlack,
                  unselectedLabelColor:
                      ColorConstants.primaryBlack.withOpacity(.3),
                  indicatorSize: TabBarIndicatorSize.tab,
                  onTap: (index) {
                    setState(() {
                      currentTagIndex = index;
                    });
                  },
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_rounded),
                    )
                  ]),
              // Container(
              //   height: 400,
              //   child: TabBarView(children: [
              //     Container(
              //       height: 200,
              //       width: 200,
              //     ),
              //     Container(
              //       height: 200,
              //       width: 200,
              //     )
              //   ]),
              // )
              currentTagIndex == 0
                  ? GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: DummyDb.postList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(DummyDb.postList[index]))),
                      ),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: DummyDb.postList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    NetworkImage(DummyDb.tagpostList[index]))),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
