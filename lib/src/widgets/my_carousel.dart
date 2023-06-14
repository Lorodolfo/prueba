import 'package:flutter/material.dart';
import 'package:prueba2/src/widgets/mini_containers.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const MyCarousel(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  int currentPage = 0;
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  IconsList iconsList = IconsList();
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imagesList.imageList.length,
      itemBuilder: (context, i, index) {
        return Card(
          elevation: 5,
          child: Container(
            color: widget.isDarkMode ? Colors.grey : Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      imagesList.imageList[i],
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    ListTile(
                      title: Text(
                        restaurantsList.restaurantsList[i],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      subtitle: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(218, 165, 32, 1.0),
                          ),
                          Text("3.35 (8)"),
                          Icon(Icons.attach_money),
                          Text("\$\$\$"),
                          Icon(Icons.location_on_outlined),
                          Text("Cancun"),
                        ],
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.check_circle_outline_sharp,
                        color: Colors.deepOrange,
                      ),
                      title: Text(
                        'Reservado veces hoy',
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MiniContainers(),
                        MiniContainers(),
                        MiniContainers(),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: FloatingActionButton(
                    elevation: 3,
                    backgroundColor: isDarkMode ? Colors.grey : Colors.white,
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
        );
      },
      options: CarouselOptions(
        aspectRatio: 4 / 5,
        height: 350,
        viewportFraction: 0.7,
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

class DotsGuide extends StatelessWidget {
  final int? count, currentPage;

  const DotsGuide({super.key, required this.count, required this.currentPage})
      : assert(count != null && count > 0),
        assert(currentPage != null && currentPage >= 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(count!, (index) {
          return Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: currentPage == index ? Colors.black : Colors.black12,
              shape:
                  currentPage == index ? BoxShape.rectangle : BoxShape.circle,
            ),
          );
        }),
      ),
    );
  }
}
