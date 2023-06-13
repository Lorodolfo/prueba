import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/widgets/mini_containers.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 0;
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  IconsList iconsList = IconsList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isDarkMode: isDarkMode,
        onDarkModeChanged: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 4 / 5,
              child: CarouselSlider.builder(
                itemCount: imagesList.imageList.length,
                itemBuilder: (context, i, index) {
                  return Card(
                    elevation: 5,
                    child: Container(
                      color: isDarkMode ? Colors.grey : Colors.white,
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
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                  );
                },
                options: CarouselOptions(
                  aspectRatio: 4 / 5,
                  height: 350,
                  viewportFraction: 0.7,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
              ),
            ),
            DotsGuide(
                count: imagesList.imageList.length, currentPage: _currentPage),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 40),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 40),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 40),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(bottom: 40),
              height: 50,
              width: 400,
              color: isDarkMode ? Colors.grey : Colors.white,
              child: Text(
                'Texto 1',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
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
              shape: currentPage == index ? BoxShape.circle : BoxShape.circle,
            ),
          );
        }),
      ),
    );
  }
}
