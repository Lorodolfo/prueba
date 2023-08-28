// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/restaurants_details/restaurants_details.dart';
import 'package:prueba2/src/widgets/mini_containers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:prueba2/src/utils/api_services_lunch.dart';

class MyCarouselCena extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarouselCena(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarouselCena> createState() => _MyCarouselCenaState();
}

class _MyCarouselCenaState extends State<MyCarouselCena> {
  int currentPage = 0;
  bool isDarkMode = false;

  //double firstCardMargin = 14.0;
  double firstCardMargin = 7.0;
  //double cardMargin = 7.5;
  double cardMargin = .9;
  String generateHeroTag(String baseTag, int index) {
    return '$baseTag$index';
  }

  MyCarouselCena carouselCena = MyCarouselCena(
    onPageChanged: (int index) {},
    isDarkMode: false,
    onDarkModeChanged: (bool isDarkMode) {},
  );
  dynamic searchResultsData = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  /*Future<void> fetchDataFromAPI() async {
    try {
      final apiServicesLunch = ApiServicesLunch();
      final data = await apiServicesLunch.fetchSearchResults();
      setState(() {
        searchResultsData = data;
      });
      //print(data);
    } catch (e) {
      print('Error al obtener los resultados de búsqueda: $e');
    }
  }*/

  Future<void> fetchDataFromAPI() async {
    try {
      final apiServicesLunch = ApiServicesLunch();
      final data = await apiServicesLunch.fetchSearchResults();
      setState(() {
        searchResultsData = data;
      });
      // Asegúrate de que 'data' sea una lista
      if (data['data'] is List) {
        searchResultsData = data['data'];
      }
    } catch (e) {
      print('Error al obtener los resultados de búsqueda: $e');
    }
  }

  final double desiredWidth = 243.0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double viewportFraction = desiredWidth / screenWidth;
    return CarouselSlider.builder(
      //itemCount: int.parse(searchResultsData['data'].length),
      itemCount: searchResultsData.length,
      itemBuilder: (context, i, index) {
        if (i >= 0 && i < searchResultsData.length) {
          /*
        final result = searchResultsData['data'][i];
        final publicationName = result['publicationName'];
        final totalReviews = result['totalReviews'];
        final id = result['publicationId'];
        final cityName = result['cityName'];
        final image = "https://storage.masmesa.com/publication/img/content/" +
            result['publicationPrincipalImage'];
        final average = result['average'];*/
          final result = searchResultsData[i];
          final publicationName = result['publicationName'];
          final totalReviews = result['totalReviews'];
          final id = result['publicationId'];
          final cityName = result['cityName'];
          final image = "https://storage.masmesa.com/publication/img/content/" +
              result['publicationPrincipalImage'];
          final average = result['average'];

          double horizontalMargin = i == 0 ? firstCardMargin : cardMargin;
          return Container(
            margin: EdgeInsets.only(
                left: horizontalMargin, right: cardMargin, bottom: 3),
            height: 337,
            padding: EdgeInsets.only(top: 9, bottom: 9, left: 9, right: 9),
            child: Container(
              //width: 209,
              width: desiredWidth,
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RestaurantsDetails(
                                        id: id,
                                        image: image,
                                        publicationName: publicationName,
                                      )));
                        },
                        child: Container(
                          width: double.infinity,
                          //height: 113.98,
                          height: 150,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                image,
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
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: FloatingActionButton(
                            heroTag: generateHeroTag('Carouselcena', i),
                            // Establecer etiqueta única
                            elevation: 3,
                            backgroundColor:
                                isDarkMode ? Colors.grey : Colors.white,
                            onPressed: () {},
                            mini: true,
                            child:
                                SvgPicture.asset("assets/icons/favorite.svg"),
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
                      right: 2,
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
                              publicationName,
                              style: const TextStyle(
                                color: Color(0xFF443F56),
                                //fontSize: 14,
                                fontSize: 15,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            width: 200,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/location.svg",
                                  color: Color(0xFF443F56),
                                  height: 16,
                                  width: 16,
                                ),
                                const SizedBox(width: 3),
                                Container(
                                  width: 180,
                                  child: Text(
                                    cityName,
                                    style: TextStyle(
                                      color: Color(0xFF443F56),
                                      fontSize: 12,
                                      //fontSize: 14,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            //width: 194,
                            height: 18,
                            child: Row(
                              //mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    //mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/star.svg",
                                        color: const Color.fromRGBO(
                                            218, 165, 32, 1.0),
                                        height: 16,
                                        width: 16,
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        child: Row(
                                          //mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              average.toString(),
                                              style: TextStyle(
                                                color: Color(0xFF443F56),
                                                fontSize: 12,
                                                //fontSize: 14,
                                                fontFamily: 'Noto Sans',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(width: 2),
                                            Text(
                                              '(${totalReviews.toString()})',
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
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  child: Row(
                                    //mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/creditCard.svg",
                                        height: 16,
                                        width: 16,
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
                                    ],
                                  ),
                                ),
                                //const SizedBox(width: 4),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            width: 182,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/check.svg",
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Reservado 13 veces hoy',
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
                          Padding(
                            padding: const EdgeInsets.only(right: 12, top: 6),
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
        } else {
          return Container();
        }
      },
      options: CarouselOptions(
        aspectRatio: 8 / 10,
        height: 337,
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

class DotsGuideCena extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuideCena({
    super.key,
    required this.count,
    required this.currentPage,
  })  : assert(count != null && count > 0),
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
