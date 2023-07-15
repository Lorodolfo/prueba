import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/widgets/mini_containers.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselCenaPrueba extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarouselCenaPrueba(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarouselCenaPrueba> createState() => _MyCarouselCena_pruebaState();
}

class _MyCarouselCena_pruebaState extends State<MyCarouselCenaPrueba> {
  int currentPage = 0;
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  IconsList iconsList = IconsList();
  double firstCardMargin = 19.0;
  double cardMargin = 10.0;
  String generateHeroTag(String baseTag, int index) {
    return '$baseTag$index';
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imagesList.imageList.length,
      itemBuilder: (context, i, index) {
        double horizontalMargin = i == 0 ? firstCardMargin : cardMargin;
        return Container(
          margin: EdgeInsets.only(left: horizontalMargin, right: cardMargin),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 5,
              child: Container(
                height: 372,
                width: 278.59,
                color: widget.isDarkMode ? Colors.grey : Colors.white,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imagesList.imageList[i],
                          height: 180.0,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 6.04, left: 9.0, right: 9),
                          child: Text(
                            restaurantsList.restaurantsList[i],
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 4.11, left: 9.0, right: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color:
                                        const Color.fromRGBO(218, 165, 32, 1.0),
                                    height: 14,
                                    width: 14,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    "5.0 (48)",
                                    style: TextStyle(
                                      color: Color(0xFF443F56),
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "assets/icons/creditCard.svg"),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    "\$\$\$",
                                    style: TextStyle(
                                      color: Color(0xFF443F56),
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/location.svg",
                                    color: Color(0xFF443F56),
                                    height: 14,
                                    width: 14,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    "Cancun",
                                    style: TextStyle(
                                      color: Color(0xFF443F56),
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.45, left: 9.0),
                          child: const Text(
                            "Pescados, mariscos y ensaladas",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.45, left: 11.03),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/check.svg"),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Reservado n veces hoy",
                                style: TextStyle(
                                    color: Color(0xFF443F56),
                                    fontSize: 12,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 14.11),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      child: Container(
                        height: 25.9,
                        width: 25.9,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: FloatingActionButton(
                          heroTag: generateHeroTag('CarouselCena', i),
                          // Establecer etiqueta única
                          elevation: 3,
                          backgroundColor:
                              isDarkMode ? Colors.grey : Colors.white,
                          onPressed: () {},
                          mini: true,
                          child: SvgPicture.asset("assets/icons/favorite.svg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        aspectRatio: 8 / 10,
        height: 372,
        viewportFraction: 0.75,
        disableCenter: true,
        initialPage: 0,
        padEnds: false,
        onPageChanged: (index, reason) {
          setState(() {
            currentPage = index;
          });
          widget.onPageChanged.call(index);
        },
      ),
    );
  }
}

class DotsGuideCenaPrueba extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuideCenaPrueba(
      {super.key, required this.count, required this.currentPage})
      : assert(count != null && count > 0),
        assert(currentPage != null && currentPage >= 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(count!, (index) {
          return Container(
            width: 40,
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: currentPage == index ? Colors.black54 : Colors.black12,
              shape:
                  currentPage == index ? BoxShape.rectangle : BoxShape.circle,
              borderRadius:
                  currentPage == index ? BorderRadius.circular(7) : null,
            ),
          );
        }),
      ),
    );
  }
}
