// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/widgets/mini_containers.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselAireLibre extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarouselAireLibre(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarouselAireLibre> createState() => _MyCarouselAireLibreState();
}

class _MyCarouselAireLibreState extends State<MyCarouselAireLibre> {
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

  final double desiredWidth = 243.0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double viewportFraction = desiredWidth / screenWidth;
    return CarouselSlider.builder(
      itemCount: imagesList.imageList.length,
      itemBuilder: (context, i, index) {
        double horizontalMargin = i == 0 ? firstCardMargin : cardMargin;
        return Container(
          margin: EdgeInsets.only(
              left: horizontalMargin, right: cardMargin, bottom: 3),
          height: 337,
          padding: EdgeInsets.only(top: 9, bottom: 9, left: 9, right: 9),
          child: Container(
            width: desiredWidth,
            //width: 209,
            height: 317,
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
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        //height: 113.98,
                        height: 150,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              imagesList.imageList[i],
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x1E000000),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 7.77,
                      right: 8.45,
                      child: Container(
                        height: 25.9,
                        width: 25.9,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: FloatingActionButton(
                          heroTag: generateHeroTag('CarouselAire', i),
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
                Container(
                  width: desiredWidth,
                  height: 166,
                  padding: const EdgeInsets.only(
                    //top: 6,
                    left: 12,
                    right: 12,
                    //bottom: 15,
                  ),
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 6.65,
                        ),
                        SizedBox(
                          width: 185,
                          child: Text(
                            restaurantsList.restaurantsList[i],
                            style: const TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 14,
                              //fontSize: 15,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        Container(
                          width: 200,
                          height: 18,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/star.svg",
                                color: const Color.fromRGBO(218, 165, 32, 1.0),
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '5.0',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 12,
                                  //fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(width: 2),
                              Text(
                                '(48)',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 12,
                                  //fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 4),
                              SvgPicture.asset(
                                "assets/icons/creditCard.svg",
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                '\$\$\$',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 12,
                                  //fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 4),
                              SvgPicture.asset(
                                "assets/icons/location.svg",
                                color: Color(0xFF443F56),
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'Cancún',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 12,
                                  //fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 7),
                        Container(
                          //width: 185,
                          height: 18,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Pescados, mariscos, ensaladas...',
                                            style: TextStyle(
                                              color: Color(0xFF443F56),
                                              fontSize: 12,
                                              //fontSize: 14,
                                              fontFamily: 'Noto Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 7),
                        Container(
                          //width: 185,
                          height: 18,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/check.svg",
                                      height: 18,
                                      width: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const SizedBox(width: 3),
                                    Container(
                                      height: 18,
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 165,
                                            child: Text(
                                              'Reservado 13 veces hoy',
                                              style: TextStyle(
                                                color: Color(0xFF443F56),
                                                fontSize: 12,
                                                //fontSize: 14,
                                                fontFamily: 'Noto Sans',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MiniContainers(
                                  hora: '12:00 PM', porcentaje: '10%'),
                              MiniContainers(
                                  hora: '11:00 PM', porcentaje: '20%'),
                              MiniContainers(
                                  hora: '12:00 PM', porcentaje: '15%'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        aspectRatio: 8 / 10,
        height: 337,

        /*viewportFraction: MediaQuery.of(context).size.width >= 1024
            ? 0.25
            : MediaQuery.of(context).size.width <= 360
                ? 0.73
                : MediaQuery.of(context).size.width <= 393
                    ? 0.695
                    //0.623
                    : 0.567,*/
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

class DotsGuideAireLibre extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuideAireLibre(
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
