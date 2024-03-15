// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/view/notification_screen/tabs/your_notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: TabBar(
                    indicatorWeight: 1,
                    dividerHeight: 1,
                    indicatorColor: ColorConstants.primaryBlack,
                    labelColor: ColorConstants.primaryBlack,
                    unselectedLabelColor:
                        ColorConstants.primaryBlack.withOpacity(0.3),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        text: "Following",
                      ),
                      Tab(
                        text: "You",
                      )
                    ])),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.yellow,
              ),
              YourNotification()
            ],
          ),
        ));
  }
}
