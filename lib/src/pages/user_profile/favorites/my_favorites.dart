// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/images.dart';

class MyFavorites extends StatefulWidget {
  const MyFavorites({super.key});

  @override
  State<MyFavorites> createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  String generateHeroTag(String baseTag, int index) {
    return '$baseTag$index';
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 14, bottom: 15),
                child: const Text(
                  "Tu seleccion de lugares",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Noto Sans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: ListView.builder(
              itemCount: imagesList.imageList.length,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: 280,
                        width: 280,
                        color: Colors.white,
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
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 9.0),
                                  child: Text(
                                    restaurantsList.restaurantsList[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Noto Sans",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 9.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/currency.svg",
                                        color: Color(0xFFF23C49),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Text(
                                        " Quitar de mi lista",
                                        style: TextStyle(
                                          color: Color(0xFFF23C49),
                                          fontFamily: "Noto Sans",
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 9.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/star.svg",
                                        color: const Color.fromRGBO(
                                            218, 165, 32, 1.0),
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/star.svg",
                                        color: const Color.fromRGBO(
                                            218, 165, 32, 1.0),
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/star.svg",
                                        color: const Color.fromRGBO(
                                            218, 165, 32, 1.0),
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/star.svg",
                                        color: const Color.fromRGBO(
                                            218, 165, 32, 1.0),
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/star.svg",
                                        color: const Color.fromRGBO(
                                            218, 165, 32, 1.0),
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      const Text(
                                        "5.0",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Noto Sans",
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      const Text(
                                        "4.000",
                                        style: TextStyle(
                                          color: Color(0xFF9691A4),
                                          fontFamily: "Noto Sans",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10.0, left: 9.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Cortes de carne |",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Noto Sans",
                                          color: Color(0xFF454056),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/location.svg",
                                        color: Color(0xFFFF552B),
                                      ),
                                      const Text(
                                        "Cancun",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Noto Sans",
                                          color: Color(0xFF666276),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 7.77,
                              right: 8.45,
                              child: FloatingActionButton(
                                heroTag: generateHeroTag('favorites', index),
                                // Establecer etiqueta única
                                elevation: 3,
                                backgroundColor: Colors.white,
                                onPressed: () {},
                                mini: true,
                                child: SvgPicture.asset(
                                    "assets/icons/favorite.svg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
