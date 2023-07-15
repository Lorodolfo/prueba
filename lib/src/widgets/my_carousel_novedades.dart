import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselNovedades extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarouselNovedades(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarouselNovedades> createState() => _MyCarouselNovedadesState();
}

class _MyCarouselNovedadesState extends State<MyCarouselNovedades> {
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
                height: 376.00,
                width: 239.00,
                color: widget.isDarkMode ? Colors.grey : Colors.white,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imagesList.imageList[i],
                          height: 150.00,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 7.00, left: 20.0),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/location.svg"),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                'Cancún',
                                style: TextStyle(
                                  color: Color(0xFFFF552B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2.5, left: 20.0),
                          child: Text(
                            restaurantsList.restaurantsList[i],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2.5, left: 20.0),
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
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 2.5, left: 20.00, bottom: 6.5),
                          child: const Text(
                            'Carnes, mariscos, ensaladas...',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 13,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          width: 198,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFEBEBEB),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20.00, top: 10.00, bottom: 15.0),
                          child: const SizedBox(
                            width: 229,
                            child: Text(
                              'La experiencia Degustare involucra los tres grupos de delicias que ofrece Bovinos...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 40,
                            width: 164,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFF552B),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                              child: Text(
                                "Reservar Experiencia",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
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
                          heroTag: generateHeroTag('Carousel_novedades', i),
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
        aspectRatio: 6.3 / 10.0,
        height: 376,
        viewportFraction: 0.8,
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

class DotsGuideNovedades extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuideNovedades(
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
