// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/core/constants/image_constants.dart';
import 'package:instegram_clone/global_widgets/custom_button.dart';
import 'package:instegram_clone/view/buttom_navigation_screen/bottom_navigation_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(ImageConstants.appIconTextpng),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Ussername",
                    fillColor: ColorConstants.primaryGrey,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(0.4))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(0.4))),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: ColorConstants.primaryGrey,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(0.4))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(0.4))),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password ?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: ColorConstants.primaryBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  buttonColour: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? ColorConstants.primaryBlue
                      : ColorConstants.primaryBlue.withOpacity(0.4),
                  text: "Log In",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationScreen()),
                        (route) => false);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Login With Facebook",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.primaryBlue),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      endIndent: 30,
                    )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                      indent: 30,
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Dont have an Acc?",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack.withOpacity(0.4)),
                      children: [
                        TextSpan(
                          text: "sign In",
                          style: TextStyle(
                              color: ColorConstants.primaryBlue,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
        child: Text(
          "Instegram or Facebook",
          textAlign: TextAlign.center,
          style: TextStyle(color: ColorConstants.primaryBlack.withOpacity(0.4)),
        ),
      ),
    );
  }
}
