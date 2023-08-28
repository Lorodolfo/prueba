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
  //double firstCardMargin = 14.0;
  double firstCardMargin = 7.0;
  //double cardMargin = 7.5;
  double cardMargin = 2.5;
  String generateHeroTag(String baseTag, int index) {
    return '$baseTag$index';
  }

  final double desiredWidth = 293.0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double viewportFraction = desiredWidth / screenWidth;
    return CarouselSlider.builder(
      itemCount: imagesList.imageList.length,
      itemBuilder: (context, i, index) {
        double horizontalMargin = i == 0 ? firstCardMargin : cardMargin;
        return Container(
          height: 416,
          margin: EdgeInsets.only(
              left: horizontalMargin, right: cardMargin, bottom: 2),
          padding: EdgeInsets.only(top: 9, bottom: 9, left: 9, right: 9),
          child: Container(
            height: 396.00,
            width: 239.00,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x1E000000),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
            ),
            margin: EdgeInsets.only(
                left: horizontalMargin, right: cardMargin, bottom: 3),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset(
                            imagesList.imageList[i],
                            height: 150.00,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8.00, left: 20.0),
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
                                  //fontSize: 13,
                                  fontSize: 15,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.5, left: 20.0),
                          child: Text(
                            restaurantsList.restaurantsList[i],
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xFF443F56),
                              //fontSize: 14,
                              fontSize: 15,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 3.5, left: 20.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color:
                                        const Color.fromRGBO(218, 165, 32, 1.0),
                                    height: 18,
                                    width: 18,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    "5.0 (48)",
                                    style: TextStyle(
                                      color: Color(0xFF443F56),
                                      //fontSize: 13,
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/creditCard.svg",
                                    height: 18,
                                    width: 18,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '\$\$\$\$',
                                    style: TextStyle(
                                      color: Color(0xFF443F56),
                                      //fontSize: 13,
                                      fontSize: 14,
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
                              top: 6.00,
                              left: 20.00,
                              //bottom: 14.00,
                              bottom: 7),
                          child: const Text(
                            "Carnes, mariscos y ensaladas",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              //fontSize: 13,
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20),
                          //width: 220,
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
                        const SizedBox(
                          //height: 14.0,
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: SizedBox(
                            width: 250,
                            child: Text(
                              'La experiencia Degustare involucra los tres grupos de delicias que ofrece Bovinos...',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                //fontSize: 13,
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Center(
                          child: Container(
                            height: 40,
                            width: 173,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFF552B),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                              child: Text(
                                "Reservar Experiencia",
                                style: TextStyle(
                                  color: Colors.white,
                                  //fontSize: 13,
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 1.3,
                                ),
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
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        aspectRatio: 6.3 / 10.0,
        height: 398,
        viewportFraction: viewportFraction,
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
            width: 25,
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 3),
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
