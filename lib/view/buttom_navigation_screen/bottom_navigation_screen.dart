// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/view/home_screen/home_screen.dart';
import 'package:instegram_clone/view/select_acc_screen/select_acc_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> screenList = [
    HomeScreen(),
    Container(
      color: Colors.brown,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    SelectAccScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value != 4) {
            selectedIndex = value;
            setState(() {});
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectAccScreen(),
                ));
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all()),
                child: Icon(Icons.add),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: ""),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/91224/pexels-photo-91224.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ),
              label: ""),
        ],
      ),
    );
  }
}
