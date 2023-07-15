import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:prueba2/src/utils/api_services.dart';

class MyCarouselNews extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarouselNews(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarouselNews> createState() => _MyCarouselNewsState();
}

class _MyCarouselNewsState extends State<MyCarouselNews> {
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
      itemCount: restaurantsList.restaurantsList.length,
      itemBuilder: (context, i, index) {
        double horizontalMargin = i == 0 ? firstCardMargin : cardMargin;
        return Container(
          margin: EdgeInsets.only(left: horizontalMargin, right: cardMargin),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 5,
              child: Container(
                height: 320.00,
                width: 360.00,
                color: widget.isDarkMode ? Colors.grey : Colors.white,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/latestNews.jpg",
                          height: 200.00,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 20.0, bottom: 4),
                            child: const Text(
                              'EXPERIENCIAS',
                              style: TextStyle(
                                color: Color(0xFFFF2F01),
                                fontSize: 12,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          width: 209,
                          child: const Text(
                            'Festival Sommelier',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 16,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                maxRadius: 14,
                                backgroundColor: Colors.grey,
                                child: Icon(Icons.add_home_rounded),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Anna Torres',
                                    style: TextStyle(
                                      color: Color(0xFF443F56),
                                      fontSize: 13,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/calendar.svg",
                                        height: 13,
                                        width: 13,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Text(
                                        'Nov 28',
                                        style: TextStyle(
                                          color: Color(0xFF666276),
                                          fontSize: 13,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      SvgPicture.asset("assets/icons/chat.svg"),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Text(
                                        '4 comentarios',
                                        style: TextStyle(
                                          color: Color(0xFF666276),
                                          fontSize: 13,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
                          heroTag: generateHeroTag('Carousel_news', i),
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
        aspectRatio: 1,
        height: 320,
        viewportFraction: 0.9,
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

class DotsGuideNews extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuideNews(
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
