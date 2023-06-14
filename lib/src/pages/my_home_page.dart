import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:prueba2/src/widgets/my_carousel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 0;
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
              child: MyCarousel(
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                isDarkMode: isDarkMode,
                onDarkModeChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
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
