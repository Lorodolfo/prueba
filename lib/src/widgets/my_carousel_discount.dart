import 'package:flutter/material.dart';
import 'package:prueba2/src/widgets/mini_containers.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselDiscounts extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarouselDiscounts(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarouselDiscounts> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarouselDiscounts> {
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
                height: 272,
                width: 208.59,
                color: widget.isDarkMode ? Colors.grey : Colors.white,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imagesList.imageList[i],
                          height: 113.98,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 6.4, left: 9.0),
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
                          margin: const EdgeInsets.only(top: 4.11, left: 9.0),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 14,
                                color: Color.fromRGBO(218, 165, 32, 1.0),
                              ),
                              Text(
                                "3.35(8)",
                                style: TextStyle(fontSize: 10),
                              ),
                              Icon(
                                Icons.attach_money,
                                size: 14,
                              ),
                              Text(
                                "\$\$",
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
                          margin: const EdgeInsets.only(top: 4.11, left: 9.0),
                          child: const Text(
                            "Pescados, mariscos y ensaladas",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4.11, left: 9.0),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.deepOrange,
                                size: 14,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
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
        aspectRatio: 8 / 10,
        height: 272,
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

class DotsGuideDiscounts extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuideDiscounts(
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
