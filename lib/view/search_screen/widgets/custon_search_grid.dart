// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomSearchGrid extends StatelessWidget {
  CustomSearchGrid({super.key, required this.isIndexEven});
  final bool isIndexEven;

  final List imageList = [
    "https://images.pexels.com/photos/17699568/pexels-photo-17699568/free-photo-of-smoky-spring.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/17699568/pexels-photo-17699568/free-photo-of-smoky-spring.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20231690/pexels-photo-20231690/free-photo-of-surfin-ay-uluwatu-bali.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20283253/pexels-photo-20283253/free-photo-of-a-green-car-parked-in-the-snow-near-a-tree.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20216447/pexels-photo-20216447/free-photo-of-a-black-car-is-parked-on-the-street.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/19741791/pexels-photo-19741791/free-photo-of-portrait-of-a-green-tree-python.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          isIndexEven
              ? Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.sizeOf(context).width * .33,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/20433278/pexels-photo-20433278/free-photo-of-indian-blue-jay.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/20520833/pexels-photo-20520833/free-photo-of-people-are-walking-around-in-front-of-a-building.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                              height: MediaQuery.sizeOf(context).width * .33,
                            )
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: MediaQuery.sizeOf(context).width * 0.66,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/20300577/pexels-photo-20300577/free-photo-of-zion-national-park.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                        ))
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: MediaQuery.sizeOf(context).width * 0.66,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/19386955/pexels-photo-19386955/free-photo-of-cowboy-riding-horse-near-water-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.sizeOf(context).width * 0.33,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/20448164/pexels-photo-20448164/free-photo-of-a-woman-in-a-floral-dress-holding-flowers-on-a-dirt-road.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/20258514/pexels-photo-20258514/free-photo-of-feeding-the-serelepe.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        "https://images.pexels.com/photos/18163082/pexels-photo-18163082/free-photo-of-camera-and-iced-coffee-on-wooden-cafe-table.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                      ))),
                              height: MediaQuery.sizeOf(context).width * 0.33,
                            )
                          ],
                        ))
                  ],
                ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageList[index]))),
                  ))
        ],
      ),
    );
  }
}
