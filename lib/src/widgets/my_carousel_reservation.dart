import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselReservation extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarouselReservation(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarouselReservation> createState() => _MyCarouselReservationState();
}

class _MyCarouselReservationState extends State<MyCarouselReservation> {
  int currentPage = 0;
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  IconsList iconsList = IconsList();
  double firstCardMargin = 19.0;
  double cardMargin = 10.0;

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
                          margin: const EdgeInsets.only(top: 7.0, left: 20.0),
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
                          margin: const EdgeInsets.only(top: 10.00, left: 20.0),
                          child: const Row(
                            children: [
                              Text(
                                "Bovinos SteakHouse",
                                style: TextStyle(fontSize: 10),
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                size: 14,
                              ),
                              Text(
                                "Cancun",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.00, left: 20.0),
                          child: const Row(
                            children: [
                              Icon(Icons.calendar_today_outlined, size: 14),
                              Text(
                                "\$ 1,400.00 MXN por persona",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 10),
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 4.00, left: 20.00, bottom: 5.00),
                          child: const Text(
                            "Carnes, mariscos y ensaladas",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Divider(
                          indent: 20,
                          endIndent: 20,
                          color: Colors.black45,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20.00, top: 5.00, bottom: 8.0),
                          child: const Text(
                            "La experiencia Degustare\ninvolucra tres grupos de\ndeliciasque ofrece Bovinos",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 40,
                            width: 137,
                            decoration: BoxDecoration(
                                color: Color(0xFFFF552B),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
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
                      child: FloatingActionButton(
                        elevation: 3,
                        backgroundColor:
                            isDarkMode ? Colors.grey : Colors.white,
                        onPressed: () {},
                        mini: true,
                        child: const Icon(
                          Icons.heart_broken_outlined,
                          color: Colors.deepOrange,
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
        viewportFraction: 0.6,
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

class DotsGuideReservation extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuideReservation(
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
