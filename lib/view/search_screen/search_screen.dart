// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instegram_clone/core/constants/color_constants.dart';
import 'package:instegram_clone/view/search_screen/widgets/custon_search_grid.dart';
import 'package:instegram_clone/view/search_screen/widgets/search_catagory_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 5),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIconConstraints: BoxConstraints(minWidth: 30),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      isDense: true,
                      fillColor: ColorConstants.primaryBlack.withOpacity(0.1),
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none)),
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.select_all))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: ColorConstants.primaryBlack.withOpacity(0.1)))),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    4,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: SearchCatagoryCard(
                            icon: index.isOdd ? Icons.redeem_rounded : null,
                          ),
                        )),
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  4, (index) => CustomSearchGrid(isIndexEven: index.isEven)),
            ),
          ))
        ],
      ),
    ));
  }
}
