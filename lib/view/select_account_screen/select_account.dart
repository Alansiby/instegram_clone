// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/core/constants/image_constants.dart';
import 'package:instegram_clone/global_widgets/custom_button.dart';
import 'package:instegram_clone/view/login_screen/login_page.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Instegram Text Image
                Image.asset(ImageConstants.appIconTextpng),

                CircleAvatar(
                  // Login Acc Image
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/91224/pexels-photo-91224.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Al_an_si_by",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: "Log in",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => LoginPage())));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                // Switch Acc
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Switch Accounts",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.primaryBlue),
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          decoration:
              BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Dont have an Acc?",
                style: TextStyle(
                    color: ColorConstants.primaryBlack.withOpacity(0.4)),
                children: [
                  TextSpan(
                      text: " Sign up",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.bold))
                ]),
          ),
        ));
  }
}
