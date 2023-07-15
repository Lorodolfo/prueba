import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/widgets/mini_containers.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/utils/api_services_search_page.dart';

class MySearchResults extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MySearchResults(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MySearchResults> createState() => _MySearchResultsState();
}

class _MySearchResultsState extends State<MySearchResults> {
  int currentPage = 0;
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  IconsList iconsList = IconsList();
  double firstCardMargin = 19.0;
  double cardMargin = 10.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: imagesList.imageList.length,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: 320,
                    width: 300,
                    color: widget.isDarkMode ? Colors.grey : Colors.white,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imagesList.imageList[index],
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 6.4, left: 9.0),
                              child: Text(
                                restaurantsList.restaurantsList[index],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 4.11, left: 9.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color:
                                        const Color.fromRGBO(218, 165, 32, 1.0),
                                    height: 14,
                                    width: 14,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "3.35(8)",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  SvgPicture.asset(
                                      "assets/icons/creditCard.svg"),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "\$\$",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/location.svg",
                                    height: 14,
                                    width: 14,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "Cancun",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 4.11, left: 9.0),
                              child: const Text(
                                "Pescados, mariscos y ensaladas",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 4.11, left: 9.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset("assets/icons/check.svg"),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "Reservado n veces hoy",
                                    style: TextStyle(
                                        fontSize: 10,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 14.11),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MiniContainers(),
                                  MiniContainers(),
                                  MiniContainers(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 7.77,
                          right: 8.45,
                          child: FloatingActionButton(
                            heroTag: "likeMySearchResults_$index",
                            elevation: 3,
                            backgroundColor:
                                isDarkMode ? Colors.grey : Colors.white,
                            onPressed: () {},
                            mini: true,
                            child:
                                SvgPicture.asset("assets/icons/favorite.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
