// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instegram_clone/dummy_db.dart';

class LibaryTab extends StatelessWidget {
  const LibaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(shrinkWrap: true,
    itemCount: DummyDb.postList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 2, crossAxisSpacing: 2, crossAxisCount: 4),
        itemBuilder: (context, index) => (Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(DummyDb.postList[index]))),
            )));
  }
}
