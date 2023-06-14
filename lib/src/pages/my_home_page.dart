import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:prueba2/src/widgets/my_carousel.dart';
import 'package:prueba2/src/widgets/my_reservations.dart';
import 'package:prueba2/src/widgets/my_search.dart';
import 'package:prueba2/src/widgets/my_selectors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ValueNotifier<int> _currentPage = ValueNotifier(0);

  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();

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
      body: Stack(
        children: [
          Positioned.fill(
            //width: double.infinity,
            child: Container(
              width: double.infinity,
              height: 750,
              child: Image.asset(
                "assets/bg.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyReservations(),
                MySearch(),
                MySelectors(),
                /*Container(
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [],
                  ),
                ),*/
                AspectRatio(
                  aspectRatio: 4 / 5,
                  child: MyCarousel(
                    onPageChanged: (index) {
                      _currentPage.value = index;
                    },
                    isDarkMode: isDarkMode,
                    onDarkModeChanged: (value) {
                      setState(() {
                        isDarkMode = value;
                      });
                    },
                  ),
                ),
                ValueListenableBuilder(
                    valueListenable: _currentPage,
                    builder: (_, value, w) {
                      return DotsGuide(
                          count: imagesList.imageList.length,
                          currentPage: value);
                    }),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
